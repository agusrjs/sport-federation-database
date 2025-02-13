import mysql.connector
from mysql.connector import Error

def insert_individual(p_name, p_last_name, p_dni, 
                     p_birth, p_nationality, p_gender,
                     p_visual_classification, p_role):
    try:
        connection = mysql.connector.connect(
            host = 'localhost',
            user = 'root',
            password = 'Feder88',
            database = 'sport_federation_network'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.callproc('pro_insert_individual', [
                p_name, p_last_name, p_dni, 
                p_birth, p_nationality, p_gender, 
                p_visual_classification, p_role
            ])

            connection.commit()
            
            return True

    except Error as e:
        return f"Error: {e}"
    
    finally:
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()

    return False