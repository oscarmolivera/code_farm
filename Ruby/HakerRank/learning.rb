class Parent
  def initialize
    print "Parent "
  end
end

class Child1 < Parent
end

Child1.new

class Child2 < Parent
  def initialize
    print "Child2 "
  end
end

Child2.new


end