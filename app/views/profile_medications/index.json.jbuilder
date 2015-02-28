json.array!(@profile_medications) do |profile_medication|
  json.extract! profile_medication, :id, :profile_id, :medication_id, :startDate, :endDate, :count, :unit, :dose, :unit, :frequency, :taken
  json.url profile_medication_url(profile_medication, format: :json)
end
