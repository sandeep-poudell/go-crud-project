```
1. Clone the project
2. Build and run docker container
   $ docker compose up -d --build

* GO server runs on localhost:8000
* Postgres db server runs on port 5432
```

Curl command for API calls. (You can use Postman)
1. Create user: 
```
curl --location --request POST 'http://localhost:8000/users' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "user1",
    "email": "user1@user.com"
}'
```
2. Get all users
```
curl --location --request GET 'http://localhost:8000/users'
```
3. Get a user
```
curl --location --request GET 'http://localhost:8000/users/1'
```
4. Update user
```
curl --location --request PUT 'http://localhost:8000/users/1' \
--header 'Content-Type: application/json' \
--data-raw '{
    "id": 1,
    "name": "user1-update",
    "email": "user1-update@user.com"
}'
```
5. Delete user
```
curl --location --request DELETE 'http://localhost:8000/users/1'
```

