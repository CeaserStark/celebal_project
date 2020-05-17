CELEBAL_PROJECT.DMP contain the data structure and data on which the query is excuted.

1.TO RUN THE CELEBAL_PROJECT.DMP
impdp <username>/<password> directory=<directoryname> dumpfile=<filename>.dmp logfile=<filename>.log  table_exists_action=replace;
->To generate the directory object in oracle database run command
	"CREATE OR REPLACE DIRECTORY <directoryname> AS '<path of folder in which you export or import>';
GRANT READ, WRITE ON DIRECTORY <directoryname> TO <username>;"

2.TO RUN QUERY
->To the query store folder
->open cmd or go to the query directory in command prompt
->then write sqlplus in command prompt, it will open sql command prompt 
->then write "@:<filename>.sql" , this run the query and show the result