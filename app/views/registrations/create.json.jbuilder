json.user do
  json.id @user.id
  json.email @user.email
  json.first_name @user.first_name
  json.last_name @user.last_name
  json.address @user.address
  json.auth_token @user.auth_token
end