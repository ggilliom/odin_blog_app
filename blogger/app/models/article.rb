class Article < ApplicationRecord
	has_many :comments # An article "has many" comments
end
