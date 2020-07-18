class Comment < ApplicationRecord
  belongs_to :article # A comment "belongs to" an article
end
