class LoggedUser
  def self.matches? (request)
    #!request.session[:user_id].blank?
    false
  end
end