class ApplicationController < ActionController::Base
    private
    def check_authenticated
        unless user_signed_in?
            flash[:alert] = "Must be loggged in"
            redirect_to root_path
        end
    end
end
