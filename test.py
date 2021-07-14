import unittest
from unittest import TestCase
import pokemon
import pandas as pd
from pandas._testing import assert_frame_equal
from pokemon import choice, dataFrame, createDatabase

#Terminal command python3 -m unittest test.py

class TestFileName(unittest.TestCase):
    def test_input(self):
        user_choice = choice()
        if user_choice == 'shiny':
          self.assertEqual(user_choice, 'shiny')
        else:
          self.assertEqual(user_choice, 'alolan')
        
    def test_data_frame(self):
      df = pd.read_csv("alolan.csv")
      data = pd.read_csv("shiny.csv")
      user1 = 'alolan'
      user2 = 'shiny'
      assert_frame_equal(dataFrame(user1), df)
      assert_frame_equal(dataFrame(user2), data)
    

if __name__ == '__main__':
    unittest.main()