require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  def test_it_exists
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    assert_instance_of Person, charlie
  end

  def test_it_has_attributes
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    assert_equal "Charlie", charlie.name
    assert_equal 18, charlie.age
  end

  def test_over_18_returns_true_when_age_is_greater_than_or_equal_to_18
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    assert_equal true, charlie.over_18?
  end

  def test_over_18_returns_false_when_age_is_less_than_18
    charlie = Person.new({"name" => "Charlie", "age" => 17})
    assert_equal false, charlie.over_18?
  end
end
