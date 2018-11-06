require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
   "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @str = ""
    params[:number].to_i.times do
      @str += params[:phrase]
    end
    @str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    my_arr = params.map{|k, v| v }
    my_arr.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    opp = ""
    case params[:operation]
    when "add"
      opp = "+"
    when "subtract"
      opp = "-"
    when "multiply"
      opp = "*"
    when "divide"
      opp = "/"
    end

    @my_str = params[:number1] + opp + params[:number2]
   "#{eval(@my_str)}"
  end

end
