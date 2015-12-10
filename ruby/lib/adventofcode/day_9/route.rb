class Route
  attr_reader :from, :to, :distance

  def initialize(line)
    match = line.match(/([^\s]+) to ([^\s]+) = ([0-9]+)/)
    fail("Line does not match correct format for route: <from> to <to> = <distance>: #{line}") unless match
    @from = match[1]
    @to = match[2]
    @distance = match[3].to_i
  end
end
