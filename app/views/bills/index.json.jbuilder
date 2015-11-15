json.bill @bills do |bill|
  json.title bill.title
  json.bill_id bill.id
  json.due_date bill.due_date
  json.amount bill.amount
  json.user_id bill.user_id
end