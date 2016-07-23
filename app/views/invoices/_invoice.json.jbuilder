json.extract! invoice, :id, :Name, :Date, :Course, :Price, :Address, :Phone, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)