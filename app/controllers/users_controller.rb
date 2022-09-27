class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  # private
  # def render_not_found_response
  #   render json: { error: "Item not found" }, status: :not_found
  # end
end
