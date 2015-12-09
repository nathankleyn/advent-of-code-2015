class Executor
  include TSort

  def initialize(statements)
    @statements = statements
  end

  def execute
    tsort.reverse.each_with_object({}) { |s, acc| acc[s.name] = s.execute(acc) }
  end

  private

  def tsort_each_node
    @statements.each { |s| yield s }
  end

  def tsort_each_child(statement)
    @statements.each { |s| yield s if s.inputs.include?(statement.name) }
  end
end
