import requests
import pandas as pd
import sqlalchemy
from sqlalchemy import create_engine
import os


# Returns a JSON dict with the keys being Pokemon ID
# the values are an array containing Pokemon name, ID, and how that shiny can be found
# Allows us to generate SQL queries by writing python code

def main():
  user = choice()
  data = dataFrame(user)
  createDatabase(data, user)


def choice():
    flag = False
    while flag is False:
      user_input = input("Type 'Alolan' or 'Shiny' to view Pokemon of selected type: ")
      lowercase = user_input.lower()
      if lowercase == 'alolan' or lowercase == 'shiny':
        flag = True
        return lowercase


def dataFrame(user):
    # Authentication for me to use their API
    headers = {
        'x-rapidapi-key': "b28cffec83msh01f2949c69f1af9p16ee98jsnb1cc8145b207",
        'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
        }

    # Send the request to the server to retrieve Pokemon data and save it into JSON format
    r = requests.get("https://pokemon-go1.p.rapidapi.com/" + user + "_pokemon.json", headers=headers).json()

    # Save pokemon object into a dataframe
    pokeDict = pd.DataFrame(r)

    # Limits the size of DataFrame cuz it was too big for engine
    if (user == 'shiny'):
      pokeDict.drop(pokeDict.iloc[:, 9:861], inplace = True, axis = 1)

    return pokeDict

def createDatabase(data, user):
  # To connect to a database, we need to talk to it
  # An engine provides that interface
  engine = create_engine('mysql://root:codio@localhost/pokeIndex')
  data.to_sql(user, con=engine, if_exists='replace', index=False)
  
  # Saves Database to a file
  os.system("mysqldump -u root -pcodio pokeIndex > poke.sql")

if __name__ == '__main__':
    main()
