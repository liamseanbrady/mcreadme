module Mcreadme
  class ReadMe
    attr_reader :file_maker

    def self.create(path)
      read_me = new(path)
      content = read_me.basic
      read_me.file_maker.make(content, path) 
    end

    def initialize(path, file_maker = FileMaker)
      @path = path
      @file_maker = file_maker
    end

    def basic
      "# Title\n"
    end

    private
      
    attr_reader :path
  end
end
