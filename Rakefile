# -*- coding: UTF-8 -*-
require 'rspec/core'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: [:spec, :rubocop]

desc 'Run our Spec'
RSpec::Core::RakeTask.new(:spec)
desc 'Run Rubocop'
Rubocop::RakeTask.new(:rubocop)
