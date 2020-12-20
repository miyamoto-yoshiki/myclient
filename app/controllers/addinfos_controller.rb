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
    @client = Client.find(addinfo_params[:client_id])
    if @addinfo.save
      redirect_to client_path(@client.id)
    else
      render :new
    end
  end

  def edit
    @form = Form.find_by(user_id: current_user.id)
    @client = Client.find(params[:client_info])
    @addinfo = Addinfo.find_by(client_id: @client.id)
  end

  def update
    @form = Form.find_by(user_id: current_user.id)
    @client = Client.find(addinfo_params[:client_id])
    @addinfo = Addinfo.find(params[:id])
    if @addinfo.update(addinfo_params)
      redirect_to client_path(@client.id)
    else
      render :edit
    end
  end

  private

  def addinfo_params
      params.require(:addinfo).permit(:add_text1, :add_text2, :add_text3, :add_text4, :add_text5, :add_text6, :add_text7, :add_text8, :add_text9, :add_text10, :client_id)
  end
end
