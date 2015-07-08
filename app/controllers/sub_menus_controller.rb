class SubMenusController < ApplicationController
  before_action :load_menu

  def create
	  @submenu = @menu.sub_menus.new(comment_params)
	  if @submenu.save
	    redirect_to @menu, notice: 'submenu successfully added'
	  else
	    redirect_to @menu, alert: 'unable to add submenu'
	  end
  end

  def destroy
    @submenu = @menu.sub_menus.find(params[:id])
    @submenu.destroy
    redirect_to @menu, notice: 'submenu deleted'
  end

  private
  def load_menu
    @menu = Menu.find(params[:menu_id])
  end

  def comment_params
    params.require(:sub_menu).permit(:name, :description)
  end
end
