class Comment < ApplicationRecord
    belongs_to :picture

    has_many :tags, through: :picture
end
