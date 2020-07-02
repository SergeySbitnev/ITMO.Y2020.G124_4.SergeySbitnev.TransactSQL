USE test_block
GO

SELECT -- use * to explore
	request_session_id AS spid,
	resource_type AS restype,
	resource_database_id AS dbid,
	DB_Name(resource_database_id) AS dbname,
	resource_description AS res,
	resource_associated_entity_id AS resid,
	request_mode AS mode,
	request_status AS status
FROM sys.dm_tran_locks;

--Connection info
SELECT --use * to exlpore
	session_id AS spid,
	connect_time,
	last_read,
	last_write,
	most_recent_sql_handle
FROM sys.dm_exec_connections
WHERE session_id IN (55, 56);

-- SQL text
SELECT session_id, text
FROM  sys.dm_exec_connections
	CROSS APPLY sys.dm_exec_sql_text(most_recent_sql_handle) AS ST
WHERE session_id IN (55, 56);

-- Blocking
SELECT -- use * to explore
	session_id AS spid,
	blocking_session_id,
	command,
	sql_handle,
	database_id,
	wait_type,
	wait_time,
	wait_resource
FROM sys.dm_exec_requests
WHERE blocking_session_id > 0;

KILL 55;