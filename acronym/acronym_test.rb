#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'acronym'

# Test data version:
# 5b5e807
class AcronymTest < Minitest::Test
  def test_basic
    assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
  end

  def test_lowercase_words
    # skip
    assert_equal 'ROR', Acronym.abbreviate('Ruby on Rails')
  end

  def test_camelcase
    # skip
    assert_equal 'HTML', Acronym.abbreviate('HyperText Markup Language')
  end

  def test_punctuation
    # skip
    assert_equal 'FIFO', Acronym.abbreviate('First In, First Out')
  end

  def test_all_caps_words
    # skip
    assert_equal 'PHP', Acronym.abbreviate('PHP: Hypertext Preprocessor')
  end

  def test_hyphenated
    # skip
    assert_equal 'CMOS', Acronym.abbreviate('Complementary metal-oxide semiconductor')
  end

end
