class Order < ApplicationRecord
    validates :name, :address, :email, presence: true
    #validates :pay_type, inclusion: pay_types.keys
    has_many :line_items, dependent: :destroy
    enum pay_type: {
        "check" => 0,
        "credit card" => 1,
        "purchase order" => 2
    }


end
