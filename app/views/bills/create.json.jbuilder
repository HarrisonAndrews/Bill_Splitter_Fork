json.bill do
  json.user_id @bill.user_id
  json.title @bill.title
  json.amount @bill.amount
  json.due_date @bill.due_date
end