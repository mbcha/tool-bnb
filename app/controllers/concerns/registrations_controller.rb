class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      puts "redirecting..."
      user_path(resource)
    end
end
