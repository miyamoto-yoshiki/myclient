class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @alltasks = Task.all.order('date DESC')
  end
  def new
    get_week
    @task = Task.new
    @client = Client.where(user_id: current_user.id)
  end
  def create
    @task = Task.create(task_params)
    @re = @task.redirect
    if @re == 0
      @task.save
      redirect_to action: :new
    elsif @re == 1
      @task.save
      redirect_to client_path(@task.client_id)
    end
  end
  def destroy
    @task= Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:date, :task, :wday, :client_id, :redirect).merge(user_id: current_user.id)
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_wday = Date.today.wday
    wday_num = @todays_wday

    @todays_date = Date.today
    @week_days = [] 
    @todays_task = []

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

      day = { month: (@todays_date).month, date: (@todays_date).day, tasks: today_tasks, wday: wdays[wday_num], ids: tasks_id }

      @week_days.push(days)
      @todays_task.push(day)
    end
  end
end
