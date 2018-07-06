class ApplicationController < ActionController::Base

  before_action
  ActionMailer::Base.default_url_options = {:host => 'lotusartberlin.herokuapp.com'}

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end
end
