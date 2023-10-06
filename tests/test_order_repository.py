from lib.order_repository import *
from lib.order import *

def test_order_repo_all(db_connection):
    db_connection.seed('seeds/shop_manager.sql')
    repo = OrderRepository(db_connection)
    assert repo.all()[0] == Order('bob', '01/01/2023', ['scissors', 'pen', 'pencil sharpener', 'lollipop', 'picture frame'])

def test_order_rep_add(db_connection):
    db_connection.seed('seeds/shop_manager.sql')
    repo = OrderRepository(db_connection)

    repo.add('lizzy', '06/10/2023', [1, 2, 3, 4])

    assert repo.all()[-1] == Order('lizzy', '06/10/2023', ['scissors', 'pencil', 'pen', 'rubber'])