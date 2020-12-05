class AddinfosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :destoy, :edit, :update]

  def new
    @allforms = Form.all
    @addinfo = Addinfo.new
    @client = Client.find(params[:client_info])
  end

  def create
    @allforms = Form.all
    @addinfo = Addinfo.new(addinfo_params)
    if @addinfo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end


  private

  def addinfo_params
      params.require(:addinfo).permit(:add_text1, :add_text2, :add_text3, :add_text4, :add_text5, :add_text6, :add_text7, :add_text8, :add_text9, :add_text10, :client_id).merge(user_id: current_user.id)
  end
end
