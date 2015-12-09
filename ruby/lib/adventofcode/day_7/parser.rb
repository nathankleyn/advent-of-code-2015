require_relative 'operations'
require_relative 'statement'

class Parser
  def initialize(lines)
    @lines = lines.map(&:strip).reject(&:empty?)
  end

  def statements
    @lines.flat_map { |line| line_to_statement(line) }
  end

  private

  def line_to_statement(line)
    case line
    when /^([a-z]+|[0-9]+) -> ([a-z]+)$/ then Statement.new($2, ValueOp.new, $1)
    when /^([a-z]+|[0-9]+) AND ([a-z]+|[0-9]+) -> ([a-z]+)$/ then Statement.new($3, AndOp.new, $1, $2)
    when /^([a-z]+|[0-9]+) OR ([a-z]+|[0-9]+) -> ([a-z]+)$/ then Statement.new($3, OrOp.new, $1, $2)
    when /^([a-z]+|[0-9]+) LSHIFT ([0-9]+) -> ([a-z]+)$/ then Statement.new($3, LShiftOp.new, $1, $2)
    when /^([a-z]+|[0-9]+) RSHIFT ([0-9]+) -> ([a-z]+)$/ then Statement.new($3, RShiftOp.new, $1, $2)
    when /^NOT ([a-z]+|[0-9]+) -> ([a-z]+)$/ then Statement.new($2, NotOp.new, $1)
    else fail("Cannot convert line to statement: #{line}")
    end
  end
end
