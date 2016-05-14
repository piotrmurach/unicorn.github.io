# encoding: utf-8

require 'static_deploy'

ENV['GENERATOR'] = 'jekyll'
ENV['COMMAND']   = 'build'

desc 'Publish TTY site'
task :publish do
  ENV['JEKYLL_ENV'] = 'production'
  Rake::Task['site:publish'].invoke("piotrmurach/github")
end
