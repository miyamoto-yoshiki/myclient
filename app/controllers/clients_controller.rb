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
    get_next
    get_before
    @form = Form.find_by(user_id: current_user.id)
    @addinfo = Addinfo.find_by(client_id: @client.id)
    @allforms = Form.all
    @allinfos = Addinfo.all
    @judg_f = form_judg
    @judg_i = addinfo_judg
    get_week
    @task = Task.new
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

  def form_judg
    return true unless @form.nil?
    return false if @form.nil?
  end

  def addinfo_judg
    return true unless @addinfo.nil?
    return false if @addinfo.nil?
  end

  def task_params
    params.require(:task).permit(:date, :task, :wday)
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_wday = Date.today.wday
    wday_num = @todays_wday

    @todays_date = Date.today
    @week_days = []

    tasks = Task.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_tasks = []
      tasks_id = []

      task = tasks.map do |task|
        today_tasks.push(task.task) if task.date == @todays_date + x
      end
      ids = tasks.map do |ids|
        tasks_id.push(ids.client_id) if ids.date == @todays_date + x
      end

      wday_num = Date.today.wday  + x
      if wday_num >= 7
        wday_num = wday_num - 7
      end
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, tasks: today_tasks, wday: wdays[wday_num], ids: tasks_id }

      @week_days.push(days)
    end
  end
  def get_next
    @cbox = Client.where(user_id: current_user.id).order(['field(user_id, ?)', current_user.id])
    @cbox.each_with_index do |cid, num|
      unless num == @cbox.size - 1
        if cid.id == @client.id
          @n_num = num
        end
          @next_num = @n_num.to_i + 1
          @next_id = @cbox[@next_num]
          @next_client = Client.find_by(id: @next_id)
      end
    end
  end
  def get_before
    @cbox = Client.where(user_id: current_user.id).order(['field(user_id, ?)', current_user.id])
    @cbox.each_with_index do |cid, num|
      unless num == 0
        if cid.id == @client.id
          @b_num = num
        end
          @before_num = @b_num.to_i - 1
          @before_id = @cbox[@before_num]
          @before_client = Client.find_by(id: @before_id)
      end
    end
  end
end
