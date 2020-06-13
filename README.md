```
# Build
docker image build https://github.com/LimKianAn/go-openapi-mongodb.git --build-arg build_arg_mongodb_atlas_uri=<your-mongodb-atlas-uri>

# Run
docker container run -d -p 8081:8080 <image ID>

# port 8081
# GET
curl http://<ip>:<port>/users/<id>

# POST
curl -X POST http://<ip>:<port>/users -H "Content-Type: application/json" -d '{"id":"9","email":"9@9","name":"nine"}'

# PATCH
curl -X PATCH http://<ip>:<port>/users/<id> -H "Content-Type: application/json" -d '{"email":"8@8","name":"eight"}'

# DELETE
curl -X DELETE http://<ip>:<port>/users/<id>
```
