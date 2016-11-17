class ThemesController < ApplicationController
  before_action :authenticate_user!

  def index
    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def show
    @theme = Theme.find_by(id: params[:id])
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      flash[:success] = 'Chat room added!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])

    if @theme.update_attributes(theme_params)
      redirect_to @theme
    else
      render 'edit'
    end
  end

  def destroy
    @theme = Theme.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to root_path
  end

  private

  def theme_params
    params.require(:theme).permit(:name)
  end
end
