class Tag < ApplicationRecord
	has_many :taggings, dependent: :destroy
	has_many :articles, through: :taggings # allows for tag.articles
										   # I think)
end
