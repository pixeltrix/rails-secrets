#!/usr/bin/env rake
require "rake/testtask"
require "bundler/gem_tasks"

desc "Default: run rails-secrets unit tests."
task :default => :test

Rake::TestTask.new do |t|
  t.libs += %w[lib test]
  t.pattern = "test/**/*_test.rb"
  t.warning = true
end

task "test:all" do
  gemfile = File.expand_path("../Gemfile", __FILE__)

  ["rails-3.2", "rails-4.0"].each do |variant|
    system({"BUNDLE_GEMFILE" => "#{gemfile}.#{variant}"}, "bundle", "exec", "rake", "test")
  end
end
