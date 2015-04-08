class RecordsController < ApplicationController

  skip_before_action :authorize

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
    @comments = @record.comments
  end

  def new
    @record = Record.new
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])

    if @record.update(record_params)
       redirect_to @record
     else
       render 'edit'
     end
  end


  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end


  def delete


  end


private

  def record_params
    params.require(:record).permit(:album_title, 
                                   :artist, 
                                   :genre, 
                                   :release_year,
                                   :owner_opinion,
                                   :user_id)
  end




end
