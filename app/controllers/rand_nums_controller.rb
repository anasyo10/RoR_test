class RandNumsController < ApplicationController
  before_action :set_rand_num, only: [:show, :edit, :update, :destroy]

  # GET /rand_nums
  # GET /rand_nums.json
  def index
    @rand_nums = RandNum.all
  end

  # GET /rand_nums/1
  # GET /rand_nums/1.json
  def show
  end

  # GET /rand_nums/new
  def new
    @rand_num = RandNum.new
  end

  # GET /rand_nums/1/edit
  def edit
  end

  # POST /rand_nums
  # POST /rand_nums.json
  def create
    byebug
    @rand_num = RandNum.new(value: params[:rand_nums][:value])

    respond_to do |format|
      if @rand_num.save
        format.html { redirect_to @rand_num, notice: 'Rand num was successfully created.' }
        format.json { render :show, status: :created, location: @rand_num }
      else
        format.html { render :new }
        format.json { render json: @rand_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rand_nums/1
  # PATCH/PUT /rand_nums/1.json
  def update
    respond_to do |format|
      if @rand_num.update(rand_num_params)
        format.html { redirect_to @rand_num, notice: 'Rand num was successfully updated.' }
        format.json { render :show, status: :ok, location: @rand_num }
      else
        format.html { render :edit }
        format.json { render json: @rand_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rand_nums/1
  # DELETE /rand_nums/1.json
  def destroy
    @rand_num.destroy
    respond_to do |format|
      format.html { redirect_to rand_nums_url, notice: 'Rand num was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rand_num
      @rand_num = RandNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rand_num_params
      debugger
      params.require(:rand_num).permit(:value)
    end
end
