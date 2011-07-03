require 'test/unit'
require 'cowplop'

class CowplopTest < Test::Unit::TestCase

  def test_output
    assert_equal "oooya", Cowplop.seed
  end

end
