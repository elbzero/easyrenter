class RentalItemImagesController < ApplicationController
  before_action :set_rental_item_image, only: [:show, :edit, :update, :destroy]

  # GET /rental_item_images
  # GET /rental_item_images.json
  def index
    @rental_item_images = RentalItemImage.all
  end

  # GET /rental_item_images/1
  # GET /rental_item_images/1.json
  def show
  end

  # GET /rental_item_images/new
  def new
    @rental_item_image = RentalItemImage.new
  end

  # GET /rental_item_images/1/edit
  def edit
  end

  # POST /rental_item_images
  # POST /rental_item_images.json
  def create
    @rental_item_image = RentalItemImage.new(rental_item_image_params)

    respond_to do |format|
      if @rental_item_image.save
        format.html { redirect_to @rental_item_image, notice: 'Rental item image was successfully created.' }
        format.json { render :show, status: :created, location: @rental_item_image }
      else
        format.html { render :new }
        format.json { render json: @rental_item_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_item_images/1
  # PATCH/PUT /rental_item_images/1.json
  def update
    respond_to do |format|
      if @rental_item_image.update(rental_item_image_params)
        format.html { redirect_to @rental_item_image, notice: 'Rental item image was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_item_image }
      else
        format.html { render :edit }
        format.json { render json: @rental_item_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_item_images/1
  # DELETE /rental_item_images/1.json
  def destroy
    @rental_item_image.destroy
    respond_to do |format|
      format.html { redirect_to rental_item_images_url, notice: 'Rental item image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_item_image
      @rental_item_image = RentalItemImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_item_image_params
      params.require(:rental_item_image).permit(:rental_item_id, :item_image, :contains_items_not_included)
    end
end
