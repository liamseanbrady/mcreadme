require 'minitest/autorun'
require_relative './test_helper'

class SkeletonTest < Minitest::Test
  def test_basic_readme
    file_path = '/tmp/basic_readme'

    Mcreadme::ReadMe.create(path: file_path)
    basic_readme = File.read(file_path)
    
    refute_predicate(basic_readme, :empty?)

    File.delete(file_path)
  end
end
