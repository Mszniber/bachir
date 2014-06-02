class AperosController < ApplicationController
  # GET /aperos
  # GET /aperos.json

  helper_method :sort_column, :sort_direction
  before_filter :authenticate_user!, :except => [:index]
  load_and_authorize_resource

  def index
 
    @aperos = Apero.order(sort_column + " " + sort_direction)
    @aperos = Apero.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aperos }
    end
  end

  # GET /aperos/1
  # GET /aperos/1.json
  def show
    @apero = Apero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apero }
    end
  end

  # GET /aperos/new
  # GET /aperos/new.json
  def new
    @apero = Apero.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apero }
    end
  end

  # GET /aperos/1/edit
  def edit
    @apero = Apero.find(params[:id])
  end

  # POST /aperos
  # POST /aperos.json
  def create
    @apero = Apero.new(params[:apero])
	@apero.user_id = current_user.id

    respond_to do |format|
      if @apero.save
        format.html { redirect_to @apero, notice: 'Apero was successfully created.' }
        format.json { render json: @apero, status: :created, location: @apero }
      else
        format.html { render action: "new" }
        format.json { render json: @apero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aperos/1
  # PUT /aperos/1.json
  def update
    @apero = Apero.find(params[:id])

    respond_to do |format|
      if @apero.update_attributes(params[:apero])
        format.html { redirect_to @apero, notice: 'Apero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aperos/1
  # DELETE /aperos/1.json
  def destroy
    @apero = Apero.find(params[:id])
    @apero.destroy

    respond_to do |format|
      format.html { redirect_to aperos_url }
      format.json { head :no_content }
    end
  end

  private
  
  def sort_column
    Apero.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
