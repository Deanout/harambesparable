class RoomsController < ApplicationController
  def show
    @messages = Message.order(created_at: :desc).limit(100).reverse
  end
end
