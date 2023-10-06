from lib.item_repository import *
from lib.item import *

def test_item_repo_all(db_connection):
    db_connection.seed('seeds/shop_manager.sql')
    repo = ItemRepository(db_connection)
    assert repo.all()[0] == Item('scissors', '£1.99', 32)

def test_order_rep_add(db_connection):
    db_connection.seed('seeds/shop_manager.sql')
    repo = ItemRepository(db_connection)

    repo.add('candle', '£7.99', 10)

    assert repo.all()[-1] == Item('candle', '£7.99', 10)