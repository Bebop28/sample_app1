class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hallo
  	render html: "Hello, world!"
  end
end
