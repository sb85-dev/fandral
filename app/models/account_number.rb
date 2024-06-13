class AccountNumber < ApplicationRecord
  belongs_to :member, inverse_of: :account_numbers

end
