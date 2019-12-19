require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @answer = ''
    params[:number].to_i.times {@answer += "#{@phrase}"}
    @answer
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
end