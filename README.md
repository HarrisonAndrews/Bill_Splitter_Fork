
### REGISTRATION ROUTES

#### To Create a User
#### POST `"/signup"`
###### Params: `first_name:` a user's first name. `last_name:` a user's last name. `email:` a user's email address. `password:` a user has a password. `address:` a user has an address.

####### JSON:
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


#### To Login with a User
#### POST `"/login"`
###### Params: `email:` a user's email. `password:` a user's password.

####### JSON:
```json
 {
 "user": {
   "email": "rc1234@me.com",
   "auth_token": "f33add59aefa8d41982c6cff1162a8b2"
 }
} 
```

#### To Delete a User
#### DELETE `"/signup"`
###### Params: `email:` a user's email. `password:` a user's password.



###BILL ROUTES

#### To create a Bill
#### POST `"/bill"`
###### Params: `user_id:` a user's id. `title:` title of bill. `amount:` total amount of bill. `due_date:` in the format of YYYY-MM-DD.

####### JSON:
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



#### To show all Bills
#### GET `"/bill"`
###### Params: None! just give it the route.


#### Get a specific Bill
#### GET `"/bill/:id"`
###### Params: Pass in the `id` of the specific bill in the url.


#### To delete a specific Bill
#### DELETE `"/bill/:id"`
###### Params: Pass in the `id` of the specific bill in the url.


#### To update a specific Bill
#### PUT `"/bill/:id"`
###### Params: Pass in the `id` of the specific bill in the url. `user_id:` a user's id. `title:` title of bill. `amount:` total amount of bill. `due_date:` in the format of YYYY-MM-DD.


### ROOMMATE ROUTES

#### To create a Roommate
#### POST `"/roommates"`
###### Params: `name:` name of the roommmate. `email:` the roommates email for notifications. `phone:` the roommates phone for notifications. `user_id:` the id of the user who created the roommate.

#### To show all Roommates
#### GET `"/roommmates"`
###### Params: None! Just give it the route.

#### To view a certain roommate
#### GET `"/roommates/:id"`
###### Params: Pass in the `id` of the specific roommate in the url.

#### To delete a certain roommate
#### DELETE `"/roommates/:id"`
###### Params: Pass in the `id` of the specific roommate in the url.

#### To update a certain roommate
#### PUT `"/roommates/:id"`
###### Params: Pass in the `id` of the specific roommate in the url. `name:` name of the roommmate. `email:` the roommates email for notifications. `phone:` the roommates phone for notifications. `user_id:` the id of the user who created the roommate.




