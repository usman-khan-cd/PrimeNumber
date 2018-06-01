class HomeController < ApplicationController

  def is_prime_number
    @result  = PrimeNumberService.new(params[:number].to_i).call
    respond_to do |format|
      format.js
    end
  end

end
