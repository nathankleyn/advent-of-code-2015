# Advent Of Code 2015

My attempts at the Advent Of Code 2015 exercises! Solutions are in Ruby, with the intention to rewrite in Rust and Haskell at some point for fun and profit.

## Running Solutions

### Ruby

Each day of the exercise is in its own module, with a class for each day:

```ruby
module AdventOfCode
  module Day1
    # Solution to the exercise from Day 1 (http://adventofcode.com/day/1).
    # This is part 1.
    class Part1
      # ...
    end
  end
end
```

Both the solution and the examples have tests written in RSpec, which can be run with `bundle exec rspec` within the `ruby` directory.
