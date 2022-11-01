class Category < ApplicationRecord
    validates :name, presence:true, uniqueness:true
    validates :image, presence:true, uniqueness:true

    scope :order_by_name, -> { order("name ASC")}
end
