# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'
require 'rubygems'
require 'bundler/setup'
require 'mysql2'
require 'dotenv'
require 'sinatra'



Dotenv.load
Bundler.require

# adds SQL query print outs to our terminal
# as we navigate our application in the browser
ActiveRecord::Base.logger = Logger.new($stdout)
