class Product < ApplicationRecord
    validates :title, presence: true
    validates :description, :image_url, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }
    validates :title, uniqueness: true, length: {minimum:3, maximum:15}
    validates :image_url, allow_blank: true, format: {
        with: %r{.(gif|jpg|png)\Z}i,
        message: 'Must be a URL for GIF, JPG or PNG image'
    }
end
