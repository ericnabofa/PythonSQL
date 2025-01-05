from sqlalchemy import create_engine

def get_connection():
    # Replace with your database credentials
    user = "postgres"
    password = "password"
    host = "localhost"
    port = "5432"
    database = "data_quality_checker"

    connection_url = f"postgresql://{user}:{password}@{host}:{port}/{database}"
    engine = create_engine(connection_url)
    return engine
