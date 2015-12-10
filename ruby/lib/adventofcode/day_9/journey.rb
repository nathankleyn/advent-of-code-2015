require 'set'
require_relative 'route'

class Journey
  def initialize(input)
    @input = input
  end

  def shortest
    journeys.min
  end

  def longest
    journeys.max
  end

  private

  def routes
    @routes ||= @input.lines.each_with_object({}) do |line, acc|
      unless line.strip.empty?
        route = Route.new(line.strip)
        acc[[route.from, route.to]] = route
      end
    end
  end

  def cities
    @cities ||= routes.each_with_object(Set.new) do |(_, route), acc|
      acc.merge([route.from, route.to])
    end
  end

  def journeys
    @journeys ||= cities.to_a.permutation.map do |journey|
      journey.each_cons(2).inject(0) do |acc, (from, to)|
        acc + (routes[[from, to]] || routes[[to, from]]).distance
      end
    end
  end
end
