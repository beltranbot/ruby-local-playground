class A
  def method1
    puts "method1: public method from #{self.class}"
  end

  def method2
    puts "method2: private method from #{self.class}"
  end

  def method3
    puts "method3: protected method from #{self.class}"
  end

  private :method2
  protected :method3
end

class B < A
  def test
    method3 # protected methods can be called from inheriting classes
  end
end

B.new.test
