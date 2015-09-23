$LOAD_PATH.unshift(File.expand_path('../../lib/', __FILE__))

require 'minitest/autorun'
require 'mcreadme/readme'

class SkeletonTest < Minitest::Test
  def test_basic_readme
    path = './test/test_readme_basic'
    readme_double = Class.new(Mcreadme::Readme) do
      def path
        path
      end
    end

    basic_readme = readme_double.create

    refute_predicate(basic_readme, :empty?)
  end
end
