json.array!(@pay_fees) do |pay_fee|
  json.extract! pay_fee, :id, :student_name, :Adm_no, :form, :stream, :amount, :pay_method
  json.url pay_fee_url(pay_fee, format: :json)
end
