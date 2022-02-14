from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
engine = create_engine("sqlite:///db.sqlite", echo=True)
base = declarative_base()


class User(base):
    __tablename__ = "users"
    uid = Column(Integer, primary_key=True)
    username = Column(String)

base.metadata.create_all(engine, checkfirst=True)


Session = sessionmaker(bind=engine)
session = Session()

# ed_user = User(username='ed')
# session.add(ed_user)
# session.commit()


query = session.query(User).all()


for element in query:
   print(element.uid)
   print(element.username)
