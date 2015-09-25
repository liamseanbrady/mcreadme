task :test do
  Dir.glob('./test/*_test.rb').each do |test_file|
    require test_file
  end
end

task :console do
  sh "irb -I lib -r mcreadme"
end

task :default => :test
