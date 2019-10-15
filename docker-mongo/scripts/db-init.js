#!/usr/bin/env bash

console.log('Creating application user and db')

db.createUser({
    user: "admin",
    pwd: "graphqltest",
    roles: [ { role: "dbOwner", db: "local" } ]
  })

// # mongo app_db \
// #         --host localhost \
// #         --port 27017 \
// #         -u admin \
// #         -p graphqltest \
// #         --authenticationDatabase admin \
// #         --eval "db.createUser({user: 'admin', pwd: 'graphqltest', roles:[{role:'dbOwner', db: 'local'}]});"