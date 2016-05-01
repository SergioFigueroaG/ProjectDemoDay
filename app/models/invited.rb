class Invited < ActiveRecord::Base
	belongs_to :user 
	belongs_to :event

	def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end
end
