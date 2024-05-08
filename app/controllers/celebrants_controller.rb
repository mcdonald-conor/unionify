class CelebrantsController < ApplicationController
  def index
    @celebrants = Celebrant.all
  end

  def show
    @celebrant = Celebrant.find(params[:id])
  end

  def new
    @celebrant = Celebrant.new
  end

  def create
    @celebrant = Celebrant.new(strong_params)
    @celebrant.user = current_user
    if @celebrant.save!
      redirect_to celebrants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def strong_params
    params.require(:celebrant).permit(:username, :location, :rate)
  end
end
