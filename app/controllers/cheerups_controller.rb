class CheerupsController < ApplicationController
  def index
    @cheerups = Cheerup.all
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end

  def new
    @cheerup = Cheerup.new
  end

  def create
    @cheerup = Cheeup.new(cheerup_params)
    if @cheerup.save
    flash[:notice] = "#{@cheerup.title} was successfully created."
    redirect_to @cheerup
  else
    render :new
  end

end
end
