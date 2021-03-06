class FavoritesController < ApplicationController
  before_action :authenticate, only: [:index, :show, :create, :destroy]
  # before_action :set_favorite, only: [:show, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = Favorite.all

    render json: @favorites
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    render json: @favorite
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    @favorite = Favorite.find(params[:id])

    if @favorite.update(favorite_params)
      head :no_content
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    # if @favorite.present?
      favorite = Favorite.find(params[:id])
      favorite.destroy
    # end

    head :no_content
  end

  private

    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    def favorite_params
      params.require(:favorite).permit(:profile_id, :bar_id)
    end
end
