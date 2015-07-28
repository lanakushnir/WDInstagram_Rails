class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order(id: :desc)
  end
  def new
    @entry = Entry.new
  end
  def create
    @entry = Entry.create!(params[:entry])
    redirect_to entry_path(@entry)
  end
  def show
    @entry = Entry.find(params[:id])
  end
  def edit
    @entry = Entry.find(params[:id])
  end
  def update
    @entry = Entry.find(params[:id])
    @entry.update(params[:entry])
    redirect_to entry_path(@entry)
  end
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path()
  end
end
