require 'minitest/unit'
require 'minitest/autorun'

class Foo
  def foo
    'foo'
  end
  def bar
    'bar'
  end
end

class TestFoo < MiniTest::Unit::TestCase
  def setup
    @foo = Foo.new
  end
  # teardown はあまり使わない
  def teardown
    @foo = nil
  end

  def test_foo
    assert_equal "foo", @foo.foo
  end

  def test_bar
    assert_equal "bar", @foo.bar
  end
end