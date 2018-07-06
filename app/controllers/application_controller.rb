class ApplicationController < ActionController::Base

before_filter
ActionMailer::Base.default_url_options = {:host => request.host_with_port}
end
