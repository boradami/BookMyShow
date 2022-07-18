class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
     if resource.is_a?(User)
      cities_path
     elsif resource.is_a?(Admin)
      movies_path
     else
     end
   end

end
