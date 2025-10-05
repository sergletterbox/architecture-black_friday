#!/bin/bash

docker exec -i shard1-1 mongosh --port 27018 <<EOF

rs.initiate(
    {
      _id : "shard1",
      members: [
        {_id: 0, host: "shard1-1:27018" },
        {_id: 1, host: "shard1-2:27021"},
        {_id: 2, host: "shard1-3:27022"}
      ]
    }
);
EOF

