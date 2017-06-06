# README

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

Request

	http://calm-sands-26146.herokuapp.com/api/v1/user_token

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

	http://calm-sands-26146.herokuapp.com/api/v1/destination

Raw Header

	Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTY0OTkyMzcsImlkIjoxLCJlbWFpbCI6Imd1ZXN0QGJsYXN0YXBwLmlvIn0.U2-p4nuFqpopWQucYeOzfWCXVXlBMSzcw-JwtMwix1Y

Returned JSON

	{
	  "id": 1,
	  "name": "home",
	  "latitude": 51.503364,
	  "longitude": -0.127625,
	  "time_to": "3 mins",
	  "distance_to": "0.2 mi"
	}

Request

	http://calm-sands-26146.herokuapp.com/api/v1/selection

Raw Payload

	{"user_id": "1", "destination_id": "2"}

Returned JSON

	{
	  "status": 201,
	  "selection": {
	    "id": 13,
		"user_id": 1,
		"destination_id": 2,
		"created_at": "2017-06-06T15:06:58.909Z",
		"updated_at": "2017-06-06T15:06:58.909Z"
	  }
	}