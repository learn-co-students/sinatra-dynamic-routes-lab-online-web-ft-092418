require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    #binding.pry
    params.each {|key, value| string += " #{value}"}
    string += "."
  end

  get '/:operation/:number1/:number2' do

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    op = ""
    case operation
    when "add"
      op = "+"
    when "multiply"
      op = "*"
    when "subtract"
      op = "-"
    when "divide"
      op = "/"
    end
    #binding.pry
    "#{num1.send(op, num2)}"
  end
end
