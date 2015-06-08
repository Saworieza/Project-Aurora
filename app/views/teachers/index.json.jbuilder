json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :full_name, :employer, :employee_number, :employment_date, :birth_date, :marital_status, :nationality, :home_address, :phone_1, :phone_2, :email, :town, :county, :education, :certifications, :subjects
  json.url teacher_url(teacher, format: :json)
end
