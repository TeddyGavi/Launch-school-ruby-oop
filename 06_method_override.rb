class Parent
  def say_hi
    p "Hi from parent"
  end
end


class Child < Parent
  def say_hello
    p "Hello from child"
  end
  # def send
  #   p "send from child"
  # end
  def instance_of?
    p "I'm a fake instance"
  end
end

child = Child.new
child.say_hello
son = Child.new
son.send :say_hello
p Parent.superclass

# lad = Child.new
# lad.send :say_hello

c = Child.new
puts c.instance_of? Child
puts c.instance_of? Parent

heir = Child.new
heir.instance_of? Child