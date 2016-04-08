class SessionsController < ApplicationController
  def new
    render nothing: true
  end

  def create
    warden.authenticate!
    render nothing: true
  end

  def destroy
    warden.logout
    render nothing: true
  end
end
