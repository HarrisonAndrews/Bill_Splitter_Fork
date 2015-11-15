json.portions do
  json.bill_id @portions.bill_id
  json.roommate_id @portions.roommate_id
  json.amount @portions.amount
  json.due_date @portions.due_date
  json.percentage @portions.percentage
end