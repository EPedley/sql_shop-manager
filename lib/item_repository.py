from lib.item import *

class ItemRepository():

    def __init__(self, connection):
        self._connection = connection

    def all(self):
        rows = self._connection.execute('SELECT * FROM items')
        items = []
        for row in rows:
            item = Item(row['name'], row['price'], row['quantity'])
            items.append(item)
        return items
    
    def add(self, name, price, quantity):
        self._connection.execute("INSERT INTO items (name, price, quantity) VALUES('%s', '%s', %i)" % (name, price, int(quantity)))