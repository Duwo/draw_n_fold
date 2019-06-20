class PicturePartsController < ApplicationController
  before_action :set_picture_part, only: [:show, :update, :destroy]

  # GET /picture_parts
  def index
    @picture_parts = PicturePart.all

    render json: @picture_parts
  end

  # GET /picture_parts/1
  def show
    @picture_part
  end

  # GET /picture_parts/random
  def random
    picture_size = 3
    PicturePart.generate_new_parts(picture_size) if PicturePart.where(image_part: nil).empty?

    @picture_part = PicturePart.where(image_part: nil).first
  end

  # POST /picture_parts
  #def create
  #  @picture_part = PicturePart.new(picture_part_params)

  #  if @picture_part.save
  #    render json: @picture_part, status: :created, location: @picture_part
  #  else
  #    render json: @picture_part.errors, status: :unprocessable_entity
  #  end
  #end

  # PATCH/PUT /picture_parts/1
  def update
    if @picture_part.update(picture_part_params)
      @picture_part
    else
      render json: @picture_part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_parts/1
  def destroy
    @picture_part.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_part
      @picture_part = PicturePart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_part_params
      params.require(:picture_part).permit(:image_part, :picture_size, :picture_order, :top_left_x, :top_right_x, :bottom_left_x, :bottom_right_x)
    end
end
