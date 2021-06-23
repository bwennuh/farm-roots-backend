class Product < ApplicationRecord

    belongs_to :farm
    has_many :purchases
    has_many :customers, through: :purchases

end