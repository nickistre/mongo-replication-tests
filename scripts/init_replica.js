/**
 * Created by nick on 9/25/16.
 *
 * Run via something like:
 * mongo --host mongodb-replica-101.vagrant.test test scripts/init_replica.js
 */

rs.initiate({
    "_id": "rs0",
    "version": 1,
    "members": [
        {
            "_id": 0,
            "host": "mongodb-replica-101.vagrant.test"
        },
        {
            "_id": 1,
            "host": "mongodb-replica-102.vagrant.test"
        },
        {
            "_id": 2,
            "host": "mongodb-replica-103.vagrant.test"
        }
    ]
});