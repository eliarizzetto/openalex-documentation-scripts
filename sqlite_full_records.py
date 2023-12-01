import sqlite3 as sql
import csv
import subprocess
import os



def execute_sql_script(database_path, script_path):
    conn = sql.connect(database_path)
    cursor = conn.cursor()

    with open(script_path, 'r') as script_file:
        script = script_file.read()
        cursor.executescript(script)

    conn.commit()
    conn.close()


def copy_csv_files_to_db(db_path, csv_data_dir):
    with sql.connect(db_path) as conn:
        cur = conn.cursor()
        for file in os.listdir(csv_data_dir):
            print(file)
            if file.endswith(".csv"):
                table_name = file.split(".")[0]
                print(table_name)

                with open(os.path.join(csv_data_dir, file), 'r', encoding='utf-8') as csv_file:
                    reader = csv.DictReader(csv_file)
                    for row in reader:
                        columns:str = ', '.join(row.keys())
                        placeholders:str = ', '.join('?' * len(row))
                        sql_insert = f'INSERT OR REPLACE INTO {table_name} ({columns}) VALUES ({placeholders})'
                        try:
                            cur.execute(sql_insert, list(row.values()))
                        except sql.IntegrityError as e:
                            print(e)
                            print(sql_insert)
                            continue
                    conn.commit()


# Create database and tables/schema
database_path = 'E:/sqlite_mm_openalex.db'
schema_path = 'C:/Users/media/Desktop/openalex/openalex-documentation-scripts/sqlite_create_schema.sql'

execute_sql_script(database_path, schema_path)

# Copy csv files to database

copy_csv_files_to_db('E:/sqlite_mm_openalex.db', 'E:/multi_mapped_full_metadata/mm-full-records-csv-files')


