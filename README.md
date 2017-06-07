# Lunchblast Server

## Ruby version
Ruby 2.3.3
Rails 5.0.3

## Database initialization
	rake db:setup

The seed file has 1 User, 1 Origin, 1 Selection, and 17 Destinations

## Requests

### POST User Token

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

### GET Destination

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

### GET Selection

Request

	http://calm-sands-26146.herokuapp.com/api/v1/selection

Raw Payload

	{"user_id": "1", "destination_id": "2"}

Returned JSON

	{
	  "selection": {
	    "id": 13,
		"user_id": 1,
		"destination_id": 2,
		"created_at": "2017-06-06T15:06:58.909Z",
		"updated_at": "2017-06-06T15:06:58.909Z"
	  }
	}

### POST User

Request

	http://calm-sands-26146.herokuapp.com/api/v1/user

Raw Payload

	{"name": "guest2", "email": "guest2@blast.io", "password": "password", "password_confirmation": "password"}

Returned JSON

	{
	  "id": 19,
	  "email": "guest102@blast.io",
	  "name": "guest2",
	  "jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE5fQ._aJXD1giIWKbStI6qjXvbERogz28lQqc2JISBnniC3s"
	}