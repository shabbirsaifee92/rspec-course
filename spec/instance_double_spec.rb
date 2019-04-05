class Person
  def a
    sleep(3)
    "Hello"
  end
  def self.b
    'class method'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
      expect(person.b).to eq(20)
    end
  end

  # only instance method can be mocked. not the class methods()use class_double
  describe 'instance double' do
    it 'can only implement instance methods that are defined on the class' do
      person = instance_double(Person, a: 'Hello')
      expect(person.a).to eq('Hello')
    end
  end
end