json.extract! employee, :id, :name, :age, :gender, :address, :country, :city, :zipcode, :project_id, :company_id, :type, :role, :designation, :created_at, :updated_at
json.url employee_url(employee, format: :json)
