json.extract! request_template, :id, :created_at, :updated_at
json.url request_template_url(request_template, format: :json)
