class UsersController < ApplicationController

  def pricing
  end

  def payment
    @fee = ENV["price_#{params[:type]}"]
    @payment_type = (params[:type] == 'vip') ? 'vip 會員' : '白金會員' 
  end

end
