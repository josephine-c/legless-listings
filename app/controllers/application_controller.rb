class ApplicationController < ActionController::Base
    private
    def after_sign_out_path_for(resources_or_scope)
        new_user_session_path
    end
end
