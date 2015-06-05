json.array!(@patients) do |patient|
  json.extract! patient, :firstname, :lastname, :dob, :gender
  json.url patient_url(patient, format: :json)
end