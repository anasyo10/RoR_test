class RandNumsController < ApplicationController
  before_action :set_rand_num, only: [:show, :edit, :update, :destroy]

  def index
    @rand_nums = RandNum.all

    respond_to do |format|
      format.html {}
      format.json { render json: @rand_nums }
    end
  end

  def create
    @rand_num = RandNum.new(value: params[:rand_nums][:value])

    respond_to do |format|
      if @rand_num.save
        format.html { redirect_to @rand_num, notice: 'Rand num was successfully created.' }
        format.js {
          @rand_nums = RandNum.all
          render layout: nil
        }
      else
        format.html { render :new }
        format.json { render json: @rand_num.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rand_num.update(value: params[:rand_nums][:value])
        format.html { redirect_to rand_nums_url, notice: 'Rand num was successfully updated.' }
        format.js {
          @rand_nums = RandNum.all
          render layout: nil
        }
      else
        format.html { render :edit }
        format.json { render json: @rand_num.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_all
    RandNum.delete_all
    respond_to do |format|
      format.html { redirect_to rand_nums_url, notice: 'All Values were deleted' }
    end
  end

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
end
