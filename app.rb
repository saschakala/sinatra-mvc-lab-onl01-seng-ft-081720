require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @piglatin = PigLatinizer.new
        @answer = @piglatin.piglatinize(params[:user_phrase])
    
        erb :piglatinize
    end

    # post '/piglatinize' do
    #     @latinized_text = PigLatinizer.new(params[:user_phrase])
    #     erb :piglatinize
    # end

end