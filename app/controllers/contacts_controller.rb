class ContactsController < ApplicationController
  before_filter :require_user
  before_filter :admin_user, :only => [:index, :show, :edit, :create, :update, :destroy]

  def index
    @contacts = Contact.order("date DESC")
  end


  def showr
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    @staff = current_user.first_name + " " + current_user.last_name
  end

  def edit
    @contact = Contact.find(params[:id])    
    @staff = current_user.first_name + " " + current_user.last_name
  end

  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to :action => 'new', :notice => 'Contact was successfully created.' }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    params[:contact][:topic_ids] ||= []
    @contact = Contact.find(params[:id])
    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to(@contact, :notice => 'Contact was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.js { render :nothing => true }
    end
  end
  
  def stats
    @contacts = Contact.all
    @contacts_by_user = Contact.count(:all, :group => 'staff')
    
  end
end
