require 'minitest/autorun'
require_relative 'test_helper'

class ReadMeTest < Minitest::Test
  def test_populates_a_basic_read_me
    file_maker = Class.new(Mcreadme::FileMaker) do
      def self.make(content, path)
      end
    end

    read_me = Mcreadme::ReadMe.new('/tmp/basic_readme',file_maker)
    basic_readme_content = read_me.basic
    basic_readme_fixture = File.read(File.expand_path('../fixtures/basic_readme', __FILE__))

    assert_equal(basic_readme_fixture, basic_readme_content)
  end
end
