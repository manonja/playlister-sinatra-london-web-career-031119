class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all

    erb :'songs/index'
  end
end

#
# class SongsController < Sinatra::Base
#   register Sinatra::ActiveRecordExtension
#   set :session_secret, "my_application_secret"
#   set :views, Proc.new { File.join(root, "../views/") }
#
#   get '/' do
#     erb :index
#   end
#
#   get '/songs' do
#     @songs = Song.all
#
#     erb :'songs/index'
#   end
# end
