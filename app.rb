require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/", __FILE__)
require 'boardcase.rb'
require 'board.rb'
require 'player.rb'
require 'game.rb'
require 'application.rb'
require 'show.rb'

Application.new.perform
