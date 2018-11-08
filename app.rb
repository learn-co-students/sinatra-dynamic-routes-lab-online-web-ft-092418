require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do 
    @name = params[:name]
    @name.reverse!
  end

  get "/square/:number" do 
    @num = params[:number].to_f
    @ans = @num * @num 
    "#{@ans}"
  end 

  get "/say/:number/:phrase" do 
    @i = params[:number].to_i
    @j = 0
    @phrase = params[:phrase]
    @phrArr = []

    while (@j < @i) do
      @j += 1
      @phrArr << "#{@phrase}"
    end
    "#{@phrArr}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @arr = [@word1, @word2, @word3, @word4, @word5]

    @phr =@arr.join(" ") + "."
  end


  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @n = params[:number1].to_f
    @i = params[:number2].to_f
    case @op 
    when "add"
      @ans = @n + @i
    when "subtract"
      @ans = @n - @i
    when "multiply"
      @ans =  @n * @i
    when "divide"
      @ans = @n / @i
    end
    "#{@ans}"
    # binding.pry
  end

end