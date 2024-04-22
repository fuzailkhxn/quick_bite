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
      name: "BBQ Bacon Burger",
      description:
          "Juicy beef patty topped with crispy bacon and tangy BBQ sauce.",
      imagePath: "lib/images/burgers/burger3.png",
      price: 489,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion Rings ", price: 70),
        Addon(name: "Extra Bacon ", price: 60),
      ],
    ),
    Food(
      name: "Double Patty Cheeseburger",
      description:
          "Double the beef, double the cheese, double the satisfaction!",
      imagePath: "lib/images/burgers/burger51.png",
      price: 375,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Patty ", price: 50),
        Addon(name: "Bacon ", price: 70),
      ],
    ),
    Food(
      name: "Spicy Jalapeno Burger",
      description:
          "Fire up your taste buds with this spicy beef patty topped with jalapenos and pepper jack cheese.",
      imagePath: "lib/images/burgers/burger31.png",
      price: 355,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce ", price: 30),
        Addon(name: "Grilled Onions ", price: 30),
      ],
    ),
    Food(
      name: "Vegetarian Portobello Burger",
      description:
          "Grilled Portobello mushroom topped with melted cheese and fresh veggies.",
      imagePath: "lib/images/burgers/burger2.png",
      price: 239,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado ", price: 90),
        Addon(name: "Vegan Cheese ", price: 70),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Savory beef patty topped with sautéed mushrooms and melted Swiss cheese.",
      imagePath: "lib/images/burgers/burger4.png",
      price: 479,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Bacon ", price: 70),
        Addon(name: "Fried Egg ", price: 60),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/salad1.png",
      price: 299,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken ", price: 170),
        Addon(name: "Shrimp ", price: 90),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, olives, and feta cheese with Greek dressing.",
      imagePath: "lib/images/salads/salad2.png",
      price: 289,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Lamb ", price: 110),
        Addon(name: "Avocado ", price: 90),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
          "Tomato slices, fresh mozzarella, basil leaves, balsamic glaze.",
      imagePath: "lib/images/salads/salad3.png",
      price: 379,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken ", price: 170),
        Addon(name: "Balsamic Chicken ", price: 130),
      ],
    ),
    Food(
      name: "Asian Sesame Chicken Salad",
      description:
          "Mixed greens, grilled chicken, mandarin oranges, crispy wonton strips, sesame dressing.",
      imagePath: "lib/images/salads/salad4.png",
      price: 445,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp ", price: 120),
        Addon(name: "Avocado ", price: 90),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Chopped lettuce, tomatoes, bacon, hard-boiled eggs, avocado, blue cheese dressing.",
      imagePath: "lib/images/salads/salad5.png",
      price: 697,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken ", price: 170),
        Addon(name: "Grilled Salmon ", price: 180),
      ],
    ),

    //sides
    Food(
      name: "Garlic Parmesan Fries",
      description: "Crispy fries tossed in garlic, parmesan cheese, and herbs.",
      imagePath: "lib/images/sides/sides1.png",
      price: 180,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 40),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy golden onion rings served with a tangy dipping sauce.",
      imagePath: "lib/images/sides/sides2.png",
      price: 150,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 40),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries lightly seasoned with sea salt.",
      imagePath: "lib/images/sides/sides3.png",
      price: 140,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 40),
      ],
    ),
    Food(
      name: "Loaded Nachos",
      description:
          "Tortilla chips topped with melted cheese, jalapenos, sour cream, and salsa.",
      imagePath: "lib/images/sides/sides4.png",
      price: 330,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 40),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Toasted garlic bread slices served with marinara sauce for dipping.",
      imagePath: "lib/images/sides/sides5.png",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese ", price: 40),
      ],
    ),

    //desserts
    Food(
      name: "New York Cheesecake",
      description:
          "Creamy cheesecake with a graham cracker crust, topped with berries.",
      imagePath: "lib/images/desserts/desserts1.png",
      price: 290,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 70),
      ],
    ),
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with a molten chocolate center, served with vanilla ice cream.",
      imagePath: "lib/images/desserts/desserts2.png",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 70),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust, served warm with a scoop of vanilla ice cream.",
      imagePath: "lib/images/desserts/desserts3.png",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 70),
      ],
    ),
    Food(
      name: "Strawberry Shortcake",
      description:
          "Layers of sponge cake, fresh strawberries, and whipped cream.",
      imagePath: "lib/images/desserts/desserts4.png",
      price: 190,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 70),
      ],
    ),
    Food(
      name: "Banana Split",
      description:
          "A classic dessert with bananas, ice cream, chocolate sauce, nuts, and whipped cream.",
      imagePath: "lib/images/desserts/desserts5.png",
      price: 230,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate ", price: 70),
      ],
    ),

    //drinks

    Food(
      name: "Iced Tea",
      description: "Refreshing brewed iced tea served with lemon wedges.",
      imagePath: "lib/images/drinks/drink1.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice ", price: 10.00),
      ],
    ),
    Food(
      name: "Soda (Coke, Pepsi, Sprite)",
      description: "Your choice of cola or lemon-lime soda served chilled.",
      imagePath: "lib/images/drinks/drink2.png",
      price: 70,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice ", price: 10),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade with a hint of sweetness.",
      imagePath: "lib/images/drinks/drink4.png",
      price: 70,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice ", price: 10),
      ],
    ),
    Food(
      name: "Milkshakes (Vanilla, Chocolate, Strawberry)",
      description:
          "Creamy milkshakes made with your favorite flavor of ice cream.",
      imagePath: "lib/images/drinks/drink3.png",
      price: 240,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice ", price: 10),
      ],
    ),
  ];

  //user cart
  final List<CartItem> _cart = [];

  //ddelivery address which you can maually edit
  String _deliveryAddress =
      'Shri Bhaghubhai Mafatlal Polytechnic, Vileparle(W)';
  /*
    getters
    */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

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
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
    helpers
     */

  //generate a reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
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
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
