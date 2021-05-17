USE Northwind;
SELECT
	ku.CONSTRAINT_SCHEMA 'ReferencedSchema',
    ku.TABLE_NAME AS ReferencedTable, 
	ku.COLUMN_NAME AS 'ReferencedColumn',
	ku.TABLE_SCHEMA,
	cu.CONSTRAINT_SCHEMA AS 'ReferencingSchema',
	cu.TABLE_NAME AS ReferencingTable, 
	cu.COLUMN_NAME AS 'ReferencingColumn'
	
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS c INNER JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cu
	ON cu.CONSTRAINT_NAME = c.CONSTRAINT_NAME
INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ku
	ON ku.CONSTRAINT_NAME = c.UNIQUE_CONSTRAINT_NAME
ORDER BY ReferencedTable,'ReferencedColumn',ReferencingTable,'ReferencingColumn'
