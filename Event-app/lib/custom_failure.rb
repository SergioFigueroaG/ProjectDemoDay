class CustomFailure < Devise::FailureApp

  def respond
    if http_auth?
      http_auth
    else
      store_location!
      flash[:alert] = i18n_message unless flash[:notice]
      
    end 
  end
end