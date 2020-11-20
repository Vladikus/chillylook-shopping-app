import 'package:flutter_test/flutter_test.dart';
import 'package:chilly_look_shopping/providers/cart.dart';
// import 'package:chilly_look_shopping/widgets/cart_item.dart';

void main() {
  //  creating 2 mock products
  Cart _cart = Cart();
  final product1 = {
    'id': '1',
    'price': 5.0,
    'title': 'Pen'
  }; //CartItem(id: '1', price: 5, quantity: 2, title: 'Pen');
  final product2 = {
    'id': '2',
    'price': 10.0,
    'title': 'Bag'
  }; // CartItem(id: '2', price: 10, quantity: 1, title: 'Bag');
  final product3 = {'id': '1', 'price': 5.0, 'title': 'Pen'};

  void addProductsToCart() {
    _cart.addItem(product1['id'], product1['price'], product1['title']);
    _cart.addItem(product2['id'], product2['price'], product2['title']);
    _cart.addItem(product3['id'], product3['price'], product3['title']);
  }

  test('Adding products to cart', () {
    expect(Cart().itemCount, 0);
    addProductsToCart();
    expect(_cart.itemCount, 2);
  });
  test('Calculating total amount', () {
    // addProductsToCart();
    expect(_cart.totalAmount, 20);
  });

  test('Delete item', () {
    _cart.removeItem('1');
    expect(_cart.itemCount, 1);
    expect(_cart.totalAmount, 10);
  });

  test('Adding the same products again', () {
    addProductsToCart();
    expect(_cart.itemCount, 2);
    expect(_cart.totalAmount, 30);
  });

  test('remove single item', () {
    _cart.removeSingleItem('2');
    expect(_cart.itemCount, 2);
    expect(_cart.totalAmount, 20);
  });

  test('Empty cart', () {
    _cart.clear();
    expect(_cart.itemCount, 0);
    expect(_cart.totalAmount, 0);
  });
}
