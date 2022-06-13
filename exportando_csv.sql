SET @table_name = 'customers'; 

SET @table_schema = 'ecommerce';

SET SESSION group_concat_max_len = 1000000;

SET @col_names = (SELECT GROUP_CONCAT(QUOTE(`column_name`)) AS columns 
FROM information_schema.columns 
WHERE table_schema = @table_schema 
AND table_name = @table_name);

SET @cols = CONCAT('(SELECT ', @col_names, ')');

SET @query = CONCAT('(SELECT * FROM ', @table_schema, '.', @table_name, ' INTO OUTFILE \'/wamp64/tmp/nome_do_arquivo.csv\'FIELDS TERMINATED BY \',\' ENCLOSED BY \'"\')');

SET @sql = CONCAT(@cols, ' UNION ALL ', @query); 

PREPARE stmt FROM @sql; 

EXECUTE stmt; 

DEALLOCATE PREPARE stmt; 

system cat '/wamp64/tmp/customer.csv'; 


