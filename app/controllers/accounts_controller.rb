class AccountsController < ApplicationController

  def index
    @users = User.all
  end
end
