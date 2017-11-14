class SignupController < ApplicationController
  def index

  end

  def join
    @user = User.new
  end
end
