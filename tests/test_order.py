from lib.order import *

def test_order_init():
    order = Order('test name', '01/01/2001')
    assert order.customer_name == 'test name'
    assert order.order_date == '01/01/2001'

def test_order_eq():
    order1 = Order('test name', '01/01/2001')
    order2 = Order('test name', '01/01/2001')
    assert order1 == order2

def test_order_repr():
    order = Order('test name', '01/01/2001', [1, 2, 3, 4])
    assert str(order) == "Customer name: test name - Order date: 01/01/2001 - Items ordered: [1, 2, 3, 4])"

