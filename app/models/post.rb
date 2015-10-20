class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :content, :length => { :maximum => 3000 }
end
