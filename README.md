# User data for our Web app!
## Works best for Amazon Linux but can be modified :)

What you need to do is:
1. Go to this website and generate your own API Key and insert it to the specified location in the file.
https://www.themoviedb.org/documentation/api

## Recommended steps:
2. Configure an EC2 and make sure the security group has permissions to the following inbound rules:
- SSH port 22 has access to your local host 
- HTTP port 80 has access to your local host
- Custon TCP port 8081 (in prder to access the mongodb container) to your local host

3. When configuring the instance add the user data with the api key.

# You are good to go! just insert the public ip of your instance to the browser on your local host and enjoy your own TMDB Movie Poster Database! :)
