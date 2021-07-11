#Returns a JSON dict with the keys being Pokemon ID
#the values are an array containing Pokemon name, ID, and how that shiny can be found
import requests
import pandas as pd
import sqlalchemy
#Allows us to generate SQL queries by writing python code
from sqlalchemy import create_engine

user_input = input("Type 'Alolan' or 'Shiny' to view Pokemon of selected type: ")
lowercase = user_input.lower()

#HTTP protocol
url = "https://pokemon-go1.p.rapidapi.com/shiny_pokemon.json"

#Authentication for me to use their API
headers = {
    'x-rapidapi-key': "b28cffec83msh01f2949c69f1af9p16ee98jsnb1cc8145b207",
    'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }

#Send the request to the server to retrieve Pokemon data
r = requests.get("https://pokemon-go1.p.rapidapi.com/" + lowercase + "_pokemon.json", headers=headers)

#Save the json format in a pokemon object
pokemon = r.json()

#Save pokemon object into a dataframe
pokeDict = pd.DataFrame(pokemon)

#Limits the size of DataFrame cuz it was too big for engine
if (lowercase == 'shiny'):
  pokeDict.drop(pokeDict.iloc[:, 9:861], inplace = True, axis = 1)

#To connect to a database, we need to talk to it
#An engine provides that interface
engine = create_engine('mysql://root:codio@localhost/PokeIndex')

pokeDict.to_sql(lowercase, con=engine, if_exists='replace', index=False)
