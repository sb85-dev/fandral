class Alert < ApplicationRecord
  belongs_to :member, inverse_of: :alerts
end
