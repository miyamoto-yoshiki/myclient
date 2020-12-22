class TopsController < ApplicationController
  before_action :authenticate_user!
  def index
    get_today
    @task = Task.new
    @client = Client.where(user_id: current_user.id)
  end

  private
  def get_today
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    @todays_wday = Date.today.wday
    wday_num = @todays_wday

    @todays_date = Date.today
    @todays_task = []

    tasks = Task.where(date: @todays_date)
    today_tasks = []
    client_id = []

    task = tasks.map do |task|
        today_tasks.push(task.task)
    end
    cid = tasks.map do |cid|
      client_id.push(cid.client_id)
    end
    
    wday_num = Date.today.wday
    if wday_num >= 7
      wday_num = wday_num - 7
    end

    day = { month: (@todays_date).month, date: (@todays_date).day, tasks: today_tasks, wday: wdays[wday_num], cid: client_id}
    @todays_task.push(day)
  end
end
