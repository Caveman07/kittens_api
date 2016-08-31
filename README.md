# README

A Simple Kittens API project from The Odin Project.

Return JSON data instead of rendering HTML

Using RestClient, you can construct query to the app and retrieve json data:

```
#to index all kittens:
2.3.1 :002 > require 'rest-client'
 => true
2.3.1 :003 > response = RestClient.get("http://localhost:3000/kittens", :accept => :json)
 => <RestClient::Response 200 "[{\"id\":2,\"n...">
 2.3.1 :006 > response = RestClient.get("http://localhost:3000/kittens/2", :accept => :json)
 => <RestClient::Response 200 "{\"id\":2,\"na...">
 
 ```
 
