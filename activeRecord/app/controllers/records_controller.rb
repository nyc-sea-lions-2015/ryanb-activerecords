class RecordsController < ApplicationController

  skip_before_action :authorize

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])

    render plain: params[:record].inspect
        # if @record.update(record_params)
    #    redirect_to @record
    #  else
    #    render 'edit'
    #  end
  end


  def create
    # render plain: params[:record].inspect
    @record = Record.new(params[:record])

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
                                   :owner_opinion)
  end




end
