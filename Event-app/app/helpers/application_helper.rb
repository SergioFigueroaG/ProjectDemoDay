module ApplicationHelper
	def resource_name
		:user
	end	
	def resource
		p "hola"
		@resource ||= User.new
		
	end
	def devise_mapping

		@devise_mapping ||= Devise.mappings[:user]
	end	
	 
end
