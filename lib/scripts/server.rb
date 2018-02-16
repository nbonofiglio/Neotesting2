#!/usr/bin/env ruby

# Load Rails
ENV['RAILS_ENV'] = ARGV[0] || 'production'
DIR = File.dirname(__FILE__) 
require DIR + '/../../config/environment'

Apiotics::Server.new