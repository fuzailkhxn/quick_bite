import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quick_bite/models/cart_item.dart';
import 'package:quick_bite/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger2.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),

    // salads
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),

    //sides
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),

    //desserts
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),

    //drinks

    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "Sink your teeth into this Classic Cheeseburger, filled with all of your favorites, and allow the bliss of spring to take over! ",
      imagePath: "lib/images/burgers/burger1.png",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 5.99),
      ],
    ),
  ];

   //user cart
  final List<CartItem> _cart = [];

  //ddelivery address which you can maually edit
  String _deliveryAddress='Shri Bhaghubhai Mafatlal Polytechnic, Vileparle(W)';
  /*
    getters
    */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress=>_deliveryAddress;

  /*
    operations
     */

 

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if  the food items are the same
      bool isSameFood = item.food == food;

      //check if the lis of slected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }

    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress=newAddress;
    notifyListeners();
  }

  /*
    helpers
     */

  //generate a reciept
  String displayCartReceipt(){
    final receipt=StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
  

  //format the date to include up to seconds only
  String formattedDate=DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("----------");

  for (final cartItem in _cart){
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
    if(cartItem.selectedAddons.isNotEmpty){
      receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }

  receipt.writeln("----------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Delivering to: $deliveryAddress");

  return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price){
    return "\₹${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name}(${_formatPrice(addon.price)})").join(", ");
  }
}
