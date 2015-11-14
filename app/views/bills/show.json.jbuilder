json.bill do
  json.id @bill.id
  json.title @bill.title
  json.amount  @bill.amount
  json.due_date @bill.due_date
  json.user_id @bill.user_id
end