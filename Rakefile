require 'rubygems'
require 'bundler'
require 'rake/testtask'
require 'rdoc/task'

desc 'Default: Run DeviseSecurityExtension unit tests'
task default: :test

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/test_*.rb'
  t.verbose = true
  t.warning = false
end

Rake::RDocTask.new do |rdoc|
  version = DeviseSecurityExtension::VERSION.dup

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "devise_security_extension #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
