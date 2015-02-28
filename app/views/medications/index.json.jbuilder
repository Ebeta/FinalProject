json.array!(@medications) do |medication|
  json.extract! medication, :id, :user_id, :name, :description, :specialNotes
  json.url medication_url(medication, format: :json)
end
