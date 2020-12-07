class TasksController < ApplicationController
  def index
    get_week
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to action: :index
  end

  private
  def task_params
    params.require(:task).permit(:date, :task, :wday)
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    @todays_wday = Date.today.wday
    wday_num = @todays_wday

    # Dateオブジェクトは、日付を保持しています。下記のように`.today.day`とすると、今日の日付を取得できます。
    @todays_date = Date.today
    # 例) 今日が2月1日の場合・・・ Date.today.day => 1日

    @week_days = []

    tasks = Task.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_tasks = []
      task = tasks.map do |task|
        today_tasks.push(task.task) if task.date == @todays_date + x
      end

      if wday_num >= 7
        wday_num = wday_num - 7
      end
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, tasks: today_tasks, wday: wdays[wday_num]}
      
      @week_days.push(days)
      wday_num = wday_num + 1
    end
  end
end
