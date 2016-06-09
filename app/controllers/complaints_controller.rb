class ComplaintsController < ApplicationController
  def my_blacklists
    @complaints = current_user.blacklists
  end

  def sucked_companies
    @complaints = Complaint.all.order("created_at DESC")
    @companies = Company.all.order("company_name ASC")

  end

  def index
    @complaints = Complaint.all.order("created_at DESC")
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new
    @complaint.caption_id = params[:caption_id]
    @complaint.body = params[:body]
    @complaint.image_1 = params[:image_1]
    @complaint.image_2 = params[:image_2]
    @complaint.image_3 = params[:image_3]
    @complaint.user_id = params[:user_id]
    @complaint.company_id = params[:company_id]

    if @complaint.save
      redirect_to "/", :notice => "Complaint created successfully."
    else
      render 'new'
    end
  end

  def edit
    @complaint = Complaint.find(params[:id])
  end

  def update
    @complaint = Complaint.find(params[:id])

    @complaint.caption_id = params[:caption_id]
    @complaint.body = params[:body]
    @complaint.image_1 = params[:image_1]
    @complaint.image_2 = params[:image_2]
    @complaint.image_3 = params[:image_3]
    @complaint.user_id = params[:user_id]
    @complaint.company_id = params[:company_id]

    if @complaint.save
      redirect_to "/complaints", :notice => "Complaint updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @complaint = Complaint.find(params[:id])

    @complaint.destroy

    redirect_to "/complaints", :notice => "Complaint deleted."
  end
end
