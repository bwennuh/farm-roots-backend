class Farm < ApplicationRecord

    has_many :products

    validates :name, presence: true
    validates :bio, presence: true
    validates :address, presence: true
    validates :farmer_name, presence: true

end