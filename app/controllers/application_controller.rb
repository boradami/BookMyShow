class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
     if resource.is_a?(User)
      movies_path
     elsif resource.is_a?(Admin)
      admins_dashboard_index_path
     else
       super
     end
   end

end
