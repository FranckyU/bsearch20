require "test_helper"
require_relative '../lib/bsearch20'

class Bsearch20Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bsearch20::VERSION
  end

  def test_it_does_first_occurence_lookup
    assert_equal 2, %w(a b c c c d e f).bsearch_first {|x| x <=> "c"}
  end
end
