class ValueOp
  def execute(input)
    input
  end
end

class AndOp
  def execute(left, right)
    left & right
  end
end

class OrOp
  def execute(left, right)
    left | right
  end
end

class LShiftOp
  def execute(input, shift)
    input << shift
  end
end

class RShiftOp
  def execute(input, shift)
    input >> shift
  end
end

class NotOp
  def execute(input)
    ~input
  end
end
