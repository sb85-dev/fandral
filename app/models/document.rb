class Document < ApplicationRecord
    has_paper_trail
    has_many :request_documents
    has_many :requests, through: :request_documents
end
