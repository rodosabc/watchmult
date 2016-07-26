class RatingsController < ApplicationController
  before_action :set_rating, only: [:edit, :update]
  def edit
  end

  def update
    if !params[:one].nil?
      @rating.update_attribute(:one, params[:one])
    end
    if !params[:two].nil?
    @rating.update_attribute(:two, params[:two])
    end
    if !params[:three].nil?
    @rating.update_attribute(:three, params[:three])
    end
    if !params[:four].nil?
    @rating.update_attribute(:four, params[:four])
    end
    if !params[:five].nil?
    @rating.update_attribute(:five, params[:five])
    end
    @rating.update_attribute(:value, refresh_rating)
    respond_to do |format|
      if @rating.update(rating_params)
        format.html { redirect_to cartoon_path(@rating.cartoon), notice: 'rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating }
      else
        format.html { render :edit }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def rating_params
    params.require(:rating).permit(:value,:one,:two,:three,:four,:five)
  end

  def set_rating
    @rating = Rating.find(params[:id])
  end

  def refresh_rating
    sum = @rating.five + @rating.four + @rating.three + @rating.two + @rating.one
    (5*@rating.five + 4*@rating.four + 3*@rating.three + 2*@rating.two + 3*@rating.one).to_f / sum
  end
end
