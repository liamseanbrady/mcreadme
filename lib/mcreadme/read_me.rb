module Mcreadme
  class ReadMe
    attr_reader :file_maker

    def self.create(path: File.expand_path('README.md', Dir.pwd), file_maker: FileMaker)
      read_me = new(path)
      content = read_me.basic
      file_maker.make(content, path) 
    end

    def initialize(path)
      @path = path
    end

    def basic
      "# Title\n"
    end

    private
      
    attr_reader :path
  end
end
