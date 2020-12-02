class ClientsController < ApplicationController
  def index
    @allclients = Client.all

  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.valid?
      @client.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end


  private
  def client_params
    params.require(:client).permit(:last_name, :first_name, :last_kana, :first_kana, :email, :phone_num, :birthday, :post_num, :prefecture, :city, :details, :build_num, :post_num).merge(user_id: current_user.id)
  end
end
