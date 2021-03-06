module Accessible
    extend ActiveSupport::Concern
    include do
        before_action :check_user
    end

    protected
    def check_user
        if current_admin
            flash.clear
            redirect_to(rails_admin,dashboard_path) and return
        elsif current_user
            flash.clear
            redirect_to(authenticated_user_root_path) and return
        end
    end
end