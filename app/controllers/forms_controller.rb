class FormsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @form = Form.find(params[:id])
  end

  def update
    @form = Form.find(params[:id])
    if @form.update(form_params)
      redirect_to client_path
    else
      render :edit
    end
  end

  private
  def form_params
    params.require(:form).permit(:f_name1, :f_name2,:f_name3, :f_name4,:f_name5, :f_name6,:f_name7, :f_name8,:f_name9, :f_name10,).merge(user_id: current_user.id)
  end
end
