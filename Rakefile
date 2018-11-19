require "bundler/gem_tasks"
require "rake/testtask"

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
  t.pattern = '**/*'
  t.options << '--display-cop-names'
end
