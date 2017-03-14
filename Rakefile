require 'rubygems'
require 'bundler/setup'

require 'resque'
require 'resque/tasks'

Dir["#{File.dirname(__FILE__)}/workers/*.rb"].each {|file| require file }


redis_server = ENV['REDIS_SERVER'] || '127.0.0.1'
redis_port = ENV['REDIS_PORT'] || 6379
redis_dsn = "#{redis_server}:#{redis_port}"

Resque.redis = redis_dsn 
