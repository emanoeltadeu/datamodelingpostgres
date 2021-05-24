# datamodelingpostgres
## Project 1: Data Modeling with Postgres from the Udacity Data Engineer Nanodegree Program


### The schema.sql file contains the entire SQL statement for creating tables and foreign keys.

## Schema design and ETL pipeline
### The star schema has 1 fact table (songplays), and 4 dimension tables:
<ul>
<li>users</li>
<li>songs</li>
<li>artists</li>
<li>time</li>
</ul>

![ER Diagram](/ER_project.png)
The image file ER_project.png is the ER diagram.
#### You should run create_tables.py at least once to create the sparkifydb database, which these other files connect to. 

In the etl.py file you have the process for transformation and loadind data into database tables with data from the JSON files: data/ folder.

#### Command lines: 
python create_tables.py

python etl.py
