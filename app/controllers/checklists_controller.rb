class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  # serves up the most recent checklist
  def current
    @user = current_user
    @user.checklists.create() unless @user.checklists.any? && @user.checklists.last.current?
    render 'edit', id: @user.checklists.last.id
  end

  # view all the user's checklists
  def index
    @user = current_user
    @checklists = @user.checklists.all
  end

  # display selected checklist for editing
  def edit
    @user = current_user
    @checklist = @user.checklists.last
  end  

  def update
    @checklist = @user.checklists.find_by(:id)
    render @checklist
  end
end

