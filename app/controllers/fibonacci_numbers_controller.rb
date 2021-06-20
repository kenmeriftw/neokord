class FibonacciNumbersController < ApplicationController
  def new
    @fib_num = FibonacciNumber.new
  end

  def create
    @fib_num = FibonacciNumber.new(fib_num_params)
    if @fib_num.save
      @fib_num.output_number = @fib_num.update(output_number: @fib_num.input_number.closest_fibonacci)

      respond_to do |format|
        format.js { render layout: false }
        format.html { render :new }
      end

    else
      redirect_to root_path
    end
  end

  def show
    @fib_num = FibonacciNumber.last
  end

  private

  def fib_num_params
    params.require(:fibonacci_number).permit(:input_number)
  end

  def find_closest_fibonacci(input_number)
    @closest_fibonacci_number = input_number.closest_fibonacci
  end
end
