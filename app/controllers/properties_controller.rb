class PropertiesController < ApplicationController
  before_action :set_property, only: [:edit, :update, :destroy]

  # respond_to :html, only: [ :index ]
  # respond_to :js, only: [ :new, :edit]

  # GET /properties
  def index
    @properties = Property.all
    @property = Property.new
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  def create
    # TODO
    @property = Property.new(property_params)
    @property.save
    respond_to :js

    if !@property.errors.any?
      redirect_to properties_url, notice: 'Property was successfully created.'
    end

    # flash[:notice] = "Property was successfully created." if @property.save
    # redirect_to properties_url
    # respond_with(@property)
    # if @property.save
    #   redirect_to properties_url, notice: 'Property was successfully created.'
    # else
    #   @properties = Property.all
    #   render :index
    # end
  end

  # PATCH/PUT /properties/1
  def update
    # TODO
    if @property.update(property_params)
      redirect_to properties_url, notice: 'Property was successfully updated.'
    else
      flash.keep
      redirect_to properties_url
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully destroyed.'
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
