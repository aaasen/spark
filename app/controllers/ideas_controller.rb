class IdeasController < ApplicationController
  before_filter :require_login, :except => [:new, :create]

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = current_user.ideas.new
  end

  def create
    @idea = current_user.ideas.create(params[:idea])
    if @idea.save
      redirect_to @idea, :notice => "Successfully created idea."
    else
      render :action => 'new'
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update_attributes(params[:idea])
      redirect_to @idea, :notice  => "Successfully updated idea."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to ideas_url, :notice => "Successfully destroyed idea."
  end
end
