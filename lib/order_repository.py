from lib.order import *

class OrderRepository():

    def __init__(self, connection):
        self._connection = connection

    def all(self):
        order_rows = self._connection.execute('SELECT * from orders')
        orders = []
        for order_row in order_rows:
            items = []
            item_rows = self._connection.execute(
                "SELECT items.name " \
                "FROM items " \
                "JOIN items_orders ON items.id = items_orders.item_id " \
                "JOIN orders ON items_orders.order_id = orders.id " \
                "WHERE orders.id = %i" % (order_row['id'])
                )
            for item_row in item_rows:
                items.append(item_row['name'])
            order = Order(order_row['customer_name'], order_row['order_date'], items)
            orders.append(order)
        return orders
    
    def add(self, customer_name, order_date, items):
        self._connection.execute("INSERT INTO orders (customer_name, order_date) VALUES('%s', '%s')" % (customer_name, order_date))
        order_id = self._connection.execute('SELECT id FROM orders WHERE customer_name = %s', [customer_name])[0]['id']
        for item_id in items:
            self._connection.execute("INSERT INTO items_orders (item_id, order_id) VALUES (%i, %i)" % (int(item_id), order_id))
