module ApplicationHelper
  def login_helper
    unless current_user.is_a?(OpenStruct) 
      link_to "Logout", destroy_user_session_path, method: :delete 
    else 
      (link_to "Sign Up", new_user_registration_path) + 
      ("<br>".html_safe) +
      (link_to "Login", new_user_session_path) 
    end 
  end
end
