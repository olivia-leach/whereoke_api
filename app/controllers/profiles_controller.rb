class ProfilesController < ApplicationController
  before_action :authenticate, only: [:index, :show, :update, :destroy]
  skip_before_action :authenticate, only: [:create]
  before_action :set_current_user, only: [:create]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    profile = Profile.find(params[:id])
    render json: profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    # def profile_params
    #   params[:profile]
    # end

    def profile_params
      params.require(:profile)
            .permit(:user_id, :username, :fav_song, :quote, :pic, :fav_bars, :reviews)
    end

end
