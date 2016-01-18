require 'minitest/autorun'
require 'minitest/pride' #Makes things colorful
require './temperature.rb' #Must require files you want to test

class TestTemperature < MiniTest::Test

  def test_converts_freezing
    #Second argument actual, First argument expected
    assert_equal(0, ftoc(32))
  end

  def test_converts_boiling
    assert_equal(100, ftoc(212))
  end

  def test_fahrenheit_converts_body_temperature
    assert_equal(37, ftoc(98.6))
  end

  def test_fahrenheit_converts_arbitrary_temperature
    assert_equal(20, ftoc(68))
  end
end
