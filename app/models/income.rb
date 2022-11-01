class Income < ApplicationRecord
  belongs_to :wallet

  validates :value, presence:true
end
