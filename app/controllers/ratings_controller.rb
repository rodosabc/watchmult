class RatingsController < ApplicationController
  before_action :set_rating, only: [:edit, :update]
  def edit
  end

  def update
    if params[:rating][:mark] == "1"
      @rating.update_attribute(:one, @rating.one + 1)
    end
    if params[:rating][:mark] == "2"
      @rating.update_attribute(:two, @rating.two + 1)
    end
    if params[:rating][:mark] == "3"
      @rating.update_attribute(:three, @rating.three + 1)
    end
    if params[:rating][:mark] == "4"
      @rating.update_attribute(:four, @rating.four + 1)
    end
    if params[:rating][:mark] == "5"
      @rating.update_attribute(:five, @rating.five + 1)
    end
    @rating.update_attribute(:value, refresh_rating)
    @rating.update(rating_params)
  end

  private
  def rating_params
    params.require(:rating).permit(:value,:one,:two,:three,:four,:five,:mark)
  end
  def set_rating
    @rating = Rating.find(params[:id])
  end

  def refresh_rating
    sum = @rating.five + @rating.four + @rating.three + @rating.two + @rating.one
    (5*@rating.five + 4*@rating.four + 3*@rating.three + 2*@rating.two + 3*@rating.one).to_f / sum
  end
end
