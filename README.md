


### POST `"/signup"`
##### Params: `first_name:` a user's first name. `last_name:` a user's last name. `email:` a user's email address. `password:` a user has a password. `address:` a user has an address.

###### JSON:
```json
 { 
 "user": {
   "user_id": 2,
   "email": "rc1234@me.com",
   "first_name": "Robby",
   "last_name": "Cramer",
   "address": "400 Atlanta Drive",
   "auth_token": "f33add59aefa8d41982c6cff1162a8b2"
 }
} 
```


### POST `"/login"`
##### Params: `email:` a user's email. `password:` a user's password.

###### JSON:
```json
 {
 "user": {
   "email": "rc1234@me.com",
   "auth_token": "f33add59aefa8d41982c6cff1162a8b2"
 }
} 
```

### POST `"/bill"`
##### Params: `user_id:` a user's id. `title:` title of bill. `amount:` total amount of bill. `due_date:` in the format of YYYY-MM-DD.

###### JSON:
```json
{
  "bill": {
    "user_id": 3,
    "title": "electric",
    "amount": 100,
    "due_date": "2015-12-20",
    "id": 6
  }
}
```
