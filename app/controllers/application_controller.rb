class ApplicationController < ActionController::Base

before_action
ActionMailer::Base.default_url_options = {:host => 'lotusartberlin.herokuapp.com'}
end
