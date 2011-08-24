class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to(:contacts, :notice => 'Login Successful') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to(root_url, :notice => 'Goodbye!') }
    end
  end
end