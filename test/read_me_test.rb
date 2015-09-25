require 'minitest/autorun'
require_relative 'test_helper'

class ReadMeTest < Minitest::Test
  def test_populates_a_basic_read_me
    read_me = Mcreadme::ReadMe.new(path: '/tmp/basic_readme')
    basic_readme_content = read_me.basic
    basic_readme_fixture = File.read(File.expand_path('../fixtures/basic_readme', __FILE__))

    assert_equal(basic_readme_fixture, basic_readme_content)
  end

  def test_creates_a_readme_in_current_working_directory
    env = self
    file_maker = Class.new(Mcreadme::FileMaker) do
      @minitest = env
      def self.make(content, path)
        expected_path = File.expand_path('README.md', File.expand_path(Dir.pwd))
        @minitest.send(:assert_equal, expected_path, path)
      end
    end

    Mcreadme::ReadMe.create(file_maker: file_maker)
  end
end
