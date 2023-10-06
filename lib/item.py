class Item():
    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity

    def __eq__(self, other):
        return self.__dict__ == other.__dict__

    def __repr__(self):
        return f"{self.name} - Unit price: {self.price} - Quantity: {self.quantity}"