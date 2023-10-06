from lib.item import *

def test_item_init():
    item = Item('test item', '£1.11', 1)
    assert item.name == 'test item'
    assert item.price == '£1.11'
    assert item.quantity == 1

def test_item_eq():
    item1 = Item('test item', '£1.11', 1)
    item2 = Item('test item', '£1.11', 1)
    assert item1 == item2

def test_item_repr():
    item = Item('test item', '£1.11', 1)
    assert str(item) == "test item - Unit price: £1.11 - Quantity: 1"