class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
    @found_task = Task.new
  end

  def find
    @all_tasks = Task.all
    @found_task = Task.find(params[:id]) # takes id
  end

  def new
    @new_task = Task.new
  end

  def create
    Task.new(task_params).save if !task_params[:title].empty? || !task_params[:details].empty?
    redirect_to tasks_path
  end

  def destroy
    to_destroy = Task.find(params[:id])
    to_destroy.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
