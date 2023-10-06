from lib.database_connection import *
from lib.order_repository import *
from lib.item_repository import *

db_connection = DatabaseConnection()
db_connection.connect()

print('Welcome to the shop management program!\n')
choice = input('What do you want to do?\n1 = list all shop items\n2 = create a new item\n3 = list all orders\n4 = create a new order\n')
if choice == '1':
    repo = ItemRepository(db_connection)
    print("Here are all your items:\n")
    rows = repo.all()
    i = 1
    for row in rows:
        print(f"#{i} {row}")
        i += 1

elif choice == '2':
    repo = ItemRepository(db_connection)
    name = input("What would you like to add: ")
    price = input("How much does it cost: ")
    quantity = input("How many are there: ")
    repo.add(name, price, quantity)
    print("The item has been added.")

elif choice == '3':
    repo = OrderRepository(db_connection)
    print('Here are all your orders:\n')
    rows = repo.all()
    i = 1
    for row in rows:
        print(f"#{i} {row}")
        i += 1

elif choice == '4':
    repo = OrderRepository(db_connection)
    name = input("What's the name for the order: ")
    date = input("What's the date of the order (dd/mm/yyyy): ")
    order = input("What items are in the order: ")
    items_ordered = []
    for item in order.split(","):
        items_ordered.append(int(item.strip()))
    repo.add(name, date, items_ordered)
    print("The order has been added.")

else:
    print("Invalid choice")