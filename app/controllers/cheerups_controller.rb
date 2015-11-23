class CheerupsController < ApplicationController
  before_action :authenticate_user!
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

  def update
    @cheerup = Cheerup.find(params[:id])
    if @heerup.update(cheerup_params)
      flash[:notice] ="#{@cheerup.name} was successfuly updated"
      redirect_to @cheerup
    else
      render :edit
    end
  end

  def destroy
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy
    redirect_to cheerups_path
end

private
def cheerup_params
  params.require(:cheerup).permit(:title, :content, :user_id)
end
end
end
