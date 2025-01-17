require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do 
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

      if params[:operation] == 'add'
        @answer = number1 + number2
        "#{@answer}"
      elsif params[:operation] == 'subtract'
        @answer = number2 - number1
        "#{@answer}"
      elsif params[:operation] == 'multiply'
        @answer = number1 * number2
        "#{@answer}"
      elsif params[:operation] == 'divide'
        @answer = number1 / number2
        "#{@answer}"

      end

  end

  # get '/:operation/:number1/:number2' do 
  #   binding.pry
  #   number1 = params[:number1].to_i
  #   number2 = params[:number2].to_i
  #   operation = param[:operation].to_s

  #   if operation == "add" 
  #     number1 + number2
  #   elsif operation == "subtract"
  #     number2 - number1
  #   elsif operation == "multiply"
  #     number1 * number2
  #   else operation == "divide"
  #     number2 / number1
  # end

end