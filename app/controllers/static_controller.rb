class StaticController < ApplicationController
  def home
    render json: { status: "its working ty" }
  end
end
