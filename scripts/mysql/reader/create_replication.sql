STOP SLAVE;
CHANGE MASTER TO
MASTER_HOST='mysql-1',
MASTER_AUTO_POSITION=1,
MASTER_USER='replication',
MASTER_PASSWORD='password',
MASTER_CONNECT_RETRY=1,
MASTER_RETRY_COUNT=300; -- 5 minutes

start slave;
