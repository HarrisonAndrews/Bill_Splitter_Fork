json.portion do
  json.bill_id @portion.bill_id
  json.roommate_id @portion.roommate_id
  json.amount @portion.amount
  json.percentage @portion.percentage
  json.due_date @portion.due_date
end