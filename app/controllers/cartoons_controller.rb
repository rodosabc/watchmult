class CartoonsController < ApplicationController
  before_action :set_cartoon, only: [:show, :edit, :update, :destroy]

  # GET /cartoons
  # GET /cartoons.json
  def index
    @cartoons = Cartoon.where(:category_id => params[:category_id])
    @category = Category.find(params[:category_id])
  end

  # GET /cartoons/1
  # GET /cartoons/1.json
  def show
    @comment = Comment.new
  end

  # GET /cartoons/new
  def new
    @cartoon = Cartoon.new
  end

  # GET /cartoons/1/edit
  def edit
  end

  # POST /cartoons
  # POST /cartoons.json
  def create
    @cartoon = Cartoon.new(cartoon_params)

    respond_to do |format|
      if @cartoon.save
        format.html { redirect_to @cartoon, notice: 'Cartoon was successfully created.' }
        format.json { render :show, status: :created, location: @cartoon }
      else
        format.html { render :new }
        format.json { render json: @cartoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartoons/1
  # PATCH/PUT /cartoons/1.json
  def update
    respond_to do |format|
      if @cartoon.update(cartoon_params)
        format.html { redirect_to @cartoon, notice: 'Cartoon was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartoon }
      else
        format.html { render :edit }
        format.json { render json: @cartoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartoons/1
  # DELETE /cartoons/1.json
  def destroy
    @cartoon.destroy
    respond_to do |format|
      format.html { redirect_to cartoons_url, notice: 'Cartoon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartoon
      @cartoon = Cartoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartoon_params
      params.require(:cartoon).permit(:cartoon_url, :rating, :views, :category_id)
    end

=begin
    def refresh_rating(mark)
      self.rating +
    end
=end
end
