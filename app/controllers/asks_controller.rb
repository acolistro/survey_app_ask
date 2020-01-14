class AsksController < ApplicationController

  def index
    @asks = Ask.all
    render :index
  end

  def new
    @ask = Ask.new
    render :new
  end

  def create
    @ask = Ask.new(ask_params)
    if @ask.save
      redirect_to asks_path
    else
      render :new
    end
  end

  def edit
    @ask = Ask.find(params[:id])
    render :edit
  end

  def show
    @ask = Ask.find(params[:id])
    render :show
  end

  def update
    @ask= Ask.find(params[:id])
    if @ask.update(ask_params)
      redirect_to asks_path
    else
      render :edit
    end
  end

  def destroy
    @ask = Ask.find(params[:id])
    @ask.destroy
    redirect_to asks_path
  end

  private
    def ask_params
      params.require(:ask).permit(:topic)
    end

end
