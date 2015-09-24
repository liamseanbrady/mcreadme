module Mcreadme
  class FileMaker
    def self.make(content, path)
      File.open(path, 'a') do |file|
        file << content
      end
    end
  end
end
