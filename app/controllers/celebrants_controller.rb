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
    @celebrant = Celebrant.find(params[:id])
  end

  def update
    @celebrant = Celebrant.find(params[:id])
    @celebrant = Celebrant.update(strong_params)
    @celebrant.user = current_user
    if @celebrant.save!
      redirect_to celebrants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @celebrant = Celebrant.find(params[:id])
    @celebrant.destroy
    redirect_to celebrants_path, status: :see_other
  end

  private

  def strong_params
    params.require(:celebrant).permit(:username, :location, :rate, :languages, :services, :bio, :years_experience)
  end
end
