class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_client, except: [:index, :new, :create]
  

  def index
    @allclients = Client.all.order('last_kana ASC')
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.valid?
      @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  def show
    @allforms = Form.all
    @allinfos = Addinfo.all
  end

  def edit
    
  end

  def update
    if @client.update(client_params)
      redirect_to client_path
    else
      render :edit
    end
  end

  def destroy
    @client.destroy if current_user.id == @client.user_id
    redirect_to clients_path
  end


  private
  def client_params
    params.require(:client).permit(:last_name, :first_name, :last_kana, :first_kana, :email, :phone_num, :birthday, :post_num, :prefecture, :city, :details, :build_num, :post_num).merge(user_id: current_user.id)
  end

  def get_client
    @client = Client.find(params[:id])
  end
end
