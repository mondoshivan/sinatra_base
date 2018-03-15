# Configuration files used by Rack apps

############################
# Class Path - Adjustments #
############################

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)


############
# Includes #
############

require 'sinatra/base'
require 'sinatra_base'

map('/') { run SinatraBase }