class CaptionsController < ApplicationController
  def index
    @captions = Caption.all
  end

  def show
    @caption = Caption.find(params[:id])
  end

  def new
    @caption = Caption.new
  end

  def create
    @caption = Caption.new
    @caption.name = params[:name]

    if @caption.save
      redirect_to "/captions", :notice => "Caption created successfully."
    else
      render 'new'
    end
  end

  def edit
    @caption = Caption.find(params[:id])
  end

  def update
    @caption = Caption.find(params[:id])

    @caption.name = params[:name]

    if @caption.save
      redirect_to "/captions", :notice => "Caption updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @caption = Caption.find(params[:id])

    @caption.destroy

    redirect_to "/captions", :notice => "Caption deleted."
  end
end
