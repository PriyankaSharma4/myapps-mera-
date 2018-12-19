class Article < ApplicationRecord

	
	# belongs_to :author
  	# has_many :comments, :dependent => :destroy

	# define_index do
	#   indexes content
	#   indexes :name, sortable: true
	  
	#   has author_id, published_at
	# end
end
