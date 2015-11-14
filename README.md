


## POST `"/signup"`
### Params: `first_name:` a user's first name. `last_name:` a user's last name. `email:` a user's email address. `password:` a user has a password. `address:` a user has an address.

#### JSON:

` {
 "user": {
   "user_id": 2,
   "email": "rc1234@me.com",
   "first_name": "Robby",
   "last_name": "Cramer",
   "address": "400 Atlanta Drive",
   "auth_token": "f33add59aefa8d41982c6cff1162a8b2"
 }
} `


## POST `"/login"`
### Params: `email:` a user's email. `password:` a user's password.

#### JSON:

` {
 "user": {
   "email": "rc1234@me.com",
   "auth_token": "f33add59aefa8d41982c6cff1162a8b2"
 }
} `
