Euler.register_language('php', Class.new do

  # Run the solution
  def run solution
    `php #{file_path(solution)}`
  end

  # Copy the template into the solution's directory
  def init solution
    FileUtils.cp(template_path, file_path(solution))
  end

  private

    # Returns the path to the solution
    def file_path solution
      "#{solution.dir}/#{solution.problem.id}.php"
    end

    # Returns the path to the template
    def template_path
      "#{File.dirname(__FILE__)}/../templates/php.php"
    end

end)
