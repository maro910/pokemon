import unittest
from unittest.mock import patch
from unittest import mock
from unittest import TestCase
import pokemon
from pokemon import choice, dataFrame, createDatabase


class TestFileName(unittest.TestCase):
      @mock.patch('pokemon.input', create=True)
      def testdictCreateSimple(self, mocked_input):
          mocked_input.side_effect = 'shiny'
          self.assertEqual(choice, 'shiny')


if __name__ == '__main__':
    unittest.main()