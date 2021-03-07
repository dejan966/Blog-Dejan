module ApplicationHelper
  def display_session_links
    capture do
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path, class:"dropdown-item"
        concat " "
        concat link_to "Odjava", destroy_user_session_path, method: :delete, class:"dropdown-item"
      else
        concat link_to "Prijava", new_user_session_path, class:"dropdown-item"
        concat " "
        concat link_to "Registracija", new_user_registration_path, class:"dropdown-item"
      end
    end
  end
end
