class RequestDocument < ApplicationRecord
  belongs_to :request
  belongs_to :document

  scope :required, -> {where(required: true)}

end
