class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # respond_to :html, only: [ :index ]
  # respond_to :js, only: [ :new, :edit]

  # GET /properties
  def index
    @properties = Property.all
    @property = Property.new
  end

  # GET /properties/1
  def show
  end

  # POST /properties
  def create
    @property = Property.new(property_params)
    @property.save

    # If there are errors in saving the property,
    # the js will render errors to #errors-container-property-1
    respond_to :js

    # If there are no errors saving, show the index page
    if !@property.errors.any?
      redirect_to properties_url, notice: 'Property was successfully created.'
    end
  end

  # PATCH/PUT /properties/1
  def update
    @property.update(property_params)
    # If there are errors in updating the property,
    # the js will render errors to #errors-container-property-1
    respond_to :js

    # If there are no errors saving, show the index page
    if !@property.errors.any?
      redirect_to properties_url, notice: 'Property was successfully created.'
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully removed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:abbreviation, :address)
    end
end
