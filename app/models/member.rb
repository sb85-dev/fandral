class Member < ApplicationRecord
    validates :first_name, :presence => true
    validates :last_name, :presence => true

    has_many :account_numbers, dependent: :destroy, inverse_of: :member
    accepts_nested_attributes_for :account_numbers
    
    def full_name
        "#{first_name} #{last_name}".titleize
    end
    
end
