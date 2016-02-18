class ApplicationController < ActionController::API

  # serialize your ActiveModel/ActiveRecord objects into the desired response format (e.g. JSON)
  include ActionController::Serialization
	# get a list of all modules included into ActionController::API in the rails console
  # ActionController::API.ancestors - ActionController::Metal.ancestors
  # The best place to add a module is in your ApplicationController

end
