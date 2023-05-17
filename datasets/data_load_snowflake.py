import pandas as pd

# Snowflake connector libraries
import snowflake.connector as snow
from snowflake.connector.pandas_tools import write_pandas

# Create a connection to Snowflake
conn = snow.connect(
    user='your user name',
    password='your password',
    account='your account id',
    warehouse='warehouse name',
    database='database name',
    schema='schema name'
)
cur=conn.cursor()
print('Connection Created')


cur = conn.cursor()
sql_titles = "TRUNCATE TABLE IF EXISTS TITLES_RAW"
sql_credits = "TRUNCATE TABLE IF EXISTS CREDITS_RAW"
cur.execute(sql_titles)
print('Tables truncated')
   
cur=conn.cursor()
titles_file = "/Users/vk/Documents/Pyspark/titles.csv"

titles_df = pd.read_csv(titles_file,sep=',')

write_pandas(conn, titles_df, "TITLES",  auto_create_table=True)
print("Title files loaded")


# Close the connection
cur.close()
conn.close()
