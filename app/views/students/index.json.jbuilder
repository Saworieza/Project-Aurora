json.array!(@students) do |student|
  json.extract! student, :id, :full_name, :Adm_No, :birth_date, :gender, :nationality, :form, :stream, :class_teacher, :address, :phone_1, :phone_2, :email, :town, :county, :Adm_date
  json.url student_url(student, format: :json)
end
