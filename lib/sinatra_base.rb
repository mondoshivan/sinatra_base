#!/usr/bin/env ruby


############
# Includes #
############

require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require 'json'
require 'slim'
require 'sass'
require 'coffee-script'
require 'thin'


class SinatraBase < Sinatra::Base

  #################
  # Configuration #
  #################

  configure do
    enable :sessions
    enable :method_override
    set :server, "thin"
    set :root, File.join(File.dirname(__FILE__), '..')
  end

  configure :development do
    register Sinatra::Reloader
    enable :reloader
    enable :logging
    set :root, File.join(File.dirname(__FILE__), '..')
  end

  before do
    logger.info "[params] #{params.inspect}"
    logger.info "[request] #{request.env['REQUEST_URI']}"
  end

  ##################
  # Route Handlers #
  ##################

  get '/' do
    slim :index
  end

  # directly executed (then we need to call 'run') or by another file?
  run! if __FILE__ == $0

end