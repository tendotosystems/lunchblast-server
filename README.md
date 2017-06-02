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
		"email": "guest@blastapp.io",
		"name": "guest"
	  }
	}

Request

	http://localhost:3000/api/v1/destination

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
