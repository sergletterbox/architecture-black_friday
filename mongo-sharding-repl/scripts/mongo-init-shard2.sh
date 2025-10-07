#!/bin/bash

docker exec -i shard2-1 mongosh --port 27019 <<EOF

rs.initiate(
    {
      _id : "shard2",
      members: [
        {_id: 0, host: "shard2-1:27019"},
        {_id: 1, host: "shard2-2:27023"},
        {_id: 2, host: "shard2-3:27024"}
      ]
    }
);
EOF