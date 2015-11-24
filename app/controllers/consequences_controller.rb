class ConsequencesController < ApplicationController
  before_action :set_consequence, only: [:show, :edit, :update, :destroy]

  # GET /consequences
  # GET /consequences.json
  def index
    @consequences = Consequence.all
  end

  # GET /consequences/1
  # GET /consequences/1.json
  def show
  end

  # GET /consequences/new
  def new
    @consequence = Consequence.new
  end

  # GET /consequences/1/edit
  def edit
  end

  # POST /consequences
  # POST /consequences.json
  def create
    @consequence = Consequence.new(consequence_params)

    respond_to do |format|
      if @consequence.save
        format.html { redirect_to @consequence, notice: 'Consequence was successfully created.' }
        format.json { render :show, status: :created, location: @consequence }
      else
        format.html { render :new }
        format.json { render json: @consequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consequences/1
  # PATCH/PUT /consequences/1.json
  def update
    respond_to do |format|
      if @consequence.update(consequence_params)
        format.html { redirect_to @consequence, notice: 'Consequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @consequence }
      else
        format.html { render :edit }
        format.json { render json: @consequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consequences/1
  # DELETE /consequences/1.json
  def destroy
    @consequence.destroy
    respond_to do |format|
      format.html { redirect_to consequences_url, notice: 'Consequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consequence
      @consequence = Consequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consequence_params
      params.require(:consequence).permit(:topic_id, :text)
    end
end
