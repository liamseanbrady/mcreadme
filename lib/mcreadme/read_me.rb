module Mcreadme
  class ReadMe
    def self.create(path)
      File.open(path, 'a') do |file|
        file << 'A README'
      end
    end
  end
end
