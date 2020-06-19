class Post < ApplicationRecord
  belongs_to :user
  has_many :comments # class_name: "comment ", foreign_key: "reference_id"
end
