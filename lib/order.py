class Order():

    def __init__(self, customer_name, order_date, items = []):
        self.customer_name = customer_name
        self.order_date = order_date
        self.items = items

    def __eq__(self, other):
        return self.__dict__ == other.__dict__
    
    def __repr__(self):
        return f"Customer name: {self.customer_name} - Order date: {self.order_date} - Items ordered: {self.items})"