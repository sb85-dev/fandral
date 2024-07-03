class Request < ApplicationRecord
    has_many :request_documents
    has_many :documents, through: :request_documents
    belongs_to :member
end
