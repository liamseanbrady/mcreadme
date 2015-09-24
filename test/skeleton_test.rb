require_relative './test_helper'
require 'minitest/autorun'

class SkeletonTest < Minitest::Test
  def test_basic_readme
    file_path = '/tmp/basic_readme'
    readme_double = Class.new(Mcreadme::ReadMe) do
      def path
        path
      end
    end

    readme_double.create(file_path)
    basic_readme = File.read(file_path)
    
    refute_predicate(basic_readme, :empty?)

    File.delete(file_path)
  end
end
