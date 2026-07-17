# Database Connectivity

import psycopg

db_params = {
    "host": "localhost", 
    "dbname": "postgres", 
    "user": "postgres", 
    "password": "12345", 
    "port": 5432
}

try:
    with psycopg.connect(**db_params) as conn:
        with conn.cursor() as cursor:
            

            update_query = "UPDATE students SET cgpa = %s WHERE roll_no = %s;"
            cursor.execute(update_query, (9.80, 101))
            print("Successfully updated student data!")
            
            
            
            alter_query = "ALTER TABLE students ADD COLUMN IF NOT EXISTS email VARCHAR(100);"
            cursor.execute(alter_query)
            print("Successfully added email column to the table structure!")
            
            
            # --- DELETING A ROW ---
            delete_query = "DELETE FROM students WHERE roll_no = %s;"
            cursor.execute(delete_query, (103,))  # Note the comma for a single-element tuple
            print("Successfully deleted student record!")

except psycopg.Error as e:
    print(f"Database error: {e}")