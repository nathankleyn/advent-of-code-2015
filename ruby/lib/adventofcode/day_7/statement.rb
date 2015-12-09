class Statement
  attr_reader :name, :inputs

  def initialize(name, operation, *inputs)
    @name = name.to_sym
    @operation = operation
    @inputs = inputs.map do |input|
      input =~ /\A\d+\Z/ ? input.to_i : input.to_sym
    end
  end

  def execute(registers)
    args = inputs.map { |dep| dep.is_a?(Symbol) ? registers[dep] : dep }

    # Bound the values to 16-bit unsigned integers.
    @operation.execute(*args) % 65_536
  end
end
