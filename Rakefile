require 'rubygems'
require 'rake'

require 'rake/testtask'
Rake::TestTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.verbose = true
end

# Need to use simplecov for ruby 1.9
# begin
#   require 'rcov/rcovtask'
#   Rcov::RcovTask.new do |spec|
#     spec.libs << 'spec'
#     spec.pattern = 'spec/**/*_spec.rb'
#     spec.verbose = true
#   end
# rescue LoadError
#   task :rcov do
#     abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
#   end
# end

task :spec => :check_dependencies

task :default => :spec

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
