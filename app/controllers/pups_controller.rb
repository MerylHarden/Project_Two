class PupsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @pups = Pup.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @pup = Pup.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @pup = Pup.new(pup_params)

    respond_to do |format|
      if @pup.save
        format.html { redirect_to @pup, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @pup }
      else
        format.html { render :new }
        format.json { render json: @pup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @pup.update(pup_params)
        format.html { redirect_to @pup, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @pup }
      else
        format.html { render :edit }
        format.json { render json: @pup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @pup.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pup
      @pup = Pup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pup_params
      params.require(:pup).permit(:name, :title, :content)
    end