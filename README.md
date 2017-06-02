# README

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

Request
	http://localhost:3000/api/v1/user_token

Raw Payload
	{"auth": {"email": "guest@blastapp.io", "password": "password"}}

Returned JSON

	{
		"jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTY0OTkyMzcsImlkIjoxLCJlbWFpbCI6Imd1ZXN0QGJsYXN0YXBwLmlvIn0.U2-p4nuFqpopWQucYeOzfWCXVXlBMSzcw-JwtMwix1Y",
		"user": 
		{
			"id": 1,
			"name": "guest",
			"created_at": "2017-06-02T03:08:44.058Z",
			"updated_at": "2017-06-02T03:08:44.058Z",
			"email": "guest@blastapp.io",
			"password_digest": "$2a$10$850irFlYLxOM4IdkmAykLOc9M5vC/OhMlxkW1gFG1b8UWGhWVdVrO"
		}
	}

Request
	http://localhost:3000/api/v1/destination/1

Raw Header
	Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTY0OTkyMzcsImlkIjoxLCJlbWFpbCI6Imd1ZXN0QGJsYXN0YXBwLmlvIn0.U2-p4nuFqpopWQucYeOzfWCXVXlBMSzcw-JwtMwix1Y

Returned JSON
	{
		"id": 1,
		"name": "home",
		"latitude": 51.503364,
		"longitude": -0.127625
	}

* Deployment instructions

* ...
