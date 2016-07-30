class RatingsController < ApplicationController
  before_action :set_rating, only: [:edit, :update]
  def edit
  end

  def update
    @chosen = nil
    @rating.value = params[:mark]
    if !params[:one].nil?
      @rating.one = params[:one]
    end
    if !params[:two].nil?
      @rating.two = params[:two]
    end
    if !params[:three].nil?
      @rating.three = params[:three]
    end
    if !params[:four].nil?
      @rating.four = params[:four]
    end
    if !params[:five].nil?
      @rating.five = params[:five]
    end
    @rating.update(rating_params)
    @rating.update_attribute(:value, refresh_rating)
    respond_to do |format|
      if @rating.update(rating_params)
        format.html { redirect_to category_cartoon_path(Category.find(@rating.cartoon.category_id),@rating.cartoon), notice: 'rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating }
        format.js
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
    @rating = Rating.find(params[:id,:mark])
  end

  def refresh_rating
    sum = @rating.five + @rating.four + @rating.three + @rating.two + @rating.one
    (5*@rating.five + 4*@rating.four + 3*@rating.three + 2*@rating.two + 3*@rating.one).to_f / sum
  end
end
