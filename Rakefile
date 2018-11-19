require "bundler/gem_tasks"
require "rake/testtask"
require 'rubocop/rake_task'
require 'yard'

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :test

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb', '-', 'README.md']
end

RuboCop::RakeTask.new do |t|
  t.patterns << '**/*.rb'
  t.options << '--display-cop-names'
end
