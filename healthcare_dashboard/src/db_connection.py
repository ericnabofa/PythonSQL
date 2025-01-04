from sqlalchemy import create_engine

def get_db_connection():
    engine = create_engine("postgresql://postgres:password@localhost:5432/healthcare_analytics")
    return engine.connect()
