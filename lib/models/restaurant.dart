import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/cart_item.dart';
import 'food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  // List of food
  final List<Food> _menu = [
    // Burger
    Food(
      name: "Classic Beefburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagepath: "lib/images/burger/beef.jpg",
      price: 499,
      avaiableAddons: [
        Addon(name: "Extra Cheese", price: 200),
        Addon(name: "Bacon", price: 250),
        Addon(name: "Avocado", price: 150),
      ],
      category: FoodCategory.burger,
    ),
    Food(
      name: "Classic Zingerburger",
      description:
          "A crispy fried chicken fillet topped with lettuce, mayo, and a soft bun for a perfect crunch.",
      imagepath: "lib/images/burger/zinger.jpg",
      price: 879,
      avaiableAddons: [
        Addon(name: "Extra Cheese", price: 150),
        Addon(name: "Bacon", price: 350),
        Addon(name: "Avocado", price: 150),
      ],
      category: FoodCategory.burger,
    ),

    Food(
      name: "Vegitable burger",
      description:
          "A flavorful patty made of fresh veggies and spices, layered with lettuce, tomato, and creamy mayo in a soft bun.",
      imagepath: "lib/images/burger/veg.jpg",
      price: 350,
      avaiableAddons: [
        Addon(name: "Extra Cheese", price: 150),
        Addon(name: "Bacon", price: 120),
        Addon(name: "Avocado", price: 90),
      ],
      category: FoodCategory.burger,
    ),
    Food(
      name: "BlueMoon burger",
      description:
          "A gourmet beef patty infused with blue cheese, caramelized onions, and a tangy aioli sauce.",
      imagepath: "lib/images/burger/bluemood.png",
      price: 1200,
      avaiableAddons: [
        Addon(name: "Extra Cheese", price: 150),
        Addon(name: "Bacon", price: 350),
        Addon(name: "Avocado", price: 120),
      ],
      category: FoodCategory.burger,
    ),

    //salads

    Food(
      name: "Asian Sasame Salad",
      description:
          "A vibrant mix of greens, crispy wonton strips, and sesame seeds, tossed in a tangy Asian-inspired sesame dressing.",
      imagepath: "lib/images/salads/asiansasame.jpg",
      price: 450,
      avaiableAddons: [
        Addon(name: "Grilled Chicken", price: 150),
        Addon(name: "Crispy Tofu", price: 180),
        Addon(name: "Avocado", price: 299),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, and croutons, tossed in a creamy Caesar dressing for a classic delight.",
      imagepath: "lib/images/salads/CaesarSalad.jpg",
      price: 999,
      avaiableAddons: [
        Addon(name: "Grilled Chicken", price: 150),
        Addon(name: "Bacon Bits", price: 450),
        Addon(name: "Shrimp", price: 350),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Greek Salad",
      description:
          "A refreshing medley of cucumbers, tomatoes, olives, and feta cheese, drizzled with olive oil and herbs.",
      imagepath: "lib/images/salads/greek.jpeg",
      price: 659,
      avaiableAddons: [
        Addon(name: "Grilled Chicken", price: 150),
        Addon(name: "Fata Cheese", price: 299),
        Addon(name: "Kalamata Olives", price: 80),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "South West Salad",
      description:
          "A zesty blend of greens, black beans, corn, avocado, and tortilla strips, topped with a spicy chipotle dressing.",
      imagepath: "lib/images/salads/southwest.jpg",
      price: 1499,
      avaiableAddons: [
        Addon(name: "Grilled Chicken", price: 200),
        Addon(name: "Cheddar Cheese", price: 140),
        Addon(name: "Spicy Jalapenos", price: 90),
      ],
      category: FoodCategory.salads,
    ),

    //sides
    Food(
      name: "Garlic bread",
      description:
          "Warm and crispy bread slices infused with rich garlic butter and topped with a sprinkle of herbs.",
      imagepath: "lib/images/sides/garlicbread.jpg",
      price: 230,
      avaiableAddons: [
        Addon(name: "Melted Cheese", price: 120),
        Addon(name: "Chilli Flakes", price: 80),
        Addon(name: "Extra Garlic Butter", price: 150),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Loaded Fries",
      description:
          "Crispy golden fries smothered in melted cheese, jalapeños, and savory toppings for a hearty treat.",
      imagepath: "lib/images/sides/loadedfries.jpg",
      price: 650,
      avaiableAddons: [
        Addon(name: "Bacon Bites", price: 220),
        Addon(name: "Extra Cheese", price: 150),
        Addon(name: "Guacamole", price: 230),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Onion Rings",
      description:
          "Crispy, golden-fried onion rings with a perfectly seasoned crunchy coating.",
      imagepath: "lib/images/sides/onionr.jpg",
      price: 350,
      avaiableAddons: [
        Addon(name: "Ranch Dip", price: 50),
        Addon(name: "BBQ sauce", price: 90),
        Addon(name: "Garlic Aioli", price: 169),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Fried Potato",
      description:
          "Perfectly seasoned fried potato wedges, crispy on the outside and soft on the inside.",
      imagepath: "lib/images/sides/potato.jpg",
      price: 150,
      avaiableAddons: [
        Addon(name: "Sour Cream", price: 60),
        Addon(name: "Chives", price: 45),
        Addon(name: "Cheese Sauce", price: 90),
      ],
      category: FoodCategory.sides,
    ),

    //desserts
    Food(
      name: "Fudge Cake",
      description:
          "A rich and moist chocolate cake layered with decadent fudge frosting for ultimate indulgence.",
      imagepath: "lib/images/desserts/fudgecake.jpg",
      price: 950,
      avaiableAddons: [
        Addon(name: "Whipped Cream", price: 300),
        Addon(name: "Chocolate Chips", price: 120),
        Addon(name: "Caramel Drizzle", price: 110),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Ice Cream Sandwich",
      description:
          "Creamy ice cream nestled between two soft cookies, creating the perfect dessert sandwich.",
      imagepath: "lib/images/desserts/icecreamsand.jpg",
      price: 720,
      avaiableAddons: [
        Addon(name: "Chocolate Syrup", price: 150),
        Addon(name: "Sprinkles", price: 135),
        Addon(name: "Crushed Nuts", price: 200),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Strawberry Cake",
      description:
          "A fluffy cake infused with fresh strawberries and topped with a creamy strawberry frosting.",
      imagepath: "lib/images/desserts/strawbcake.jpg",
      price: 1660,
      avaiableAddons: [
        Addon(name: "Whipped Cream", price: 200),
        Addon(name: "White Chocolate Shavings", price: 299),
        Addon(name: "Strawberry Syrup", price: 100),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Vanilla Cake",
      description:
          "A classic, buttery vanilla cake with a smooth and creamy vanilla frosting.",
      imagepath: "lib/images/desserts/vanilacake.jpg",
      price: 450,
      avaiableAddons: [
        Addon(name: "Rainbow Sprinkles", price: 100),
        Addon(name: "Chocolate Drizzle", price: 150),
        Addon(name: "Fresh Berries", price: 80),
      ],
      category: FoodCategory.desserts,
    ),
    //drinks

    Food(
      name: "Pepsi",
      description:
          "A refreshing and bold cola with the perfect balance of sweetness and fizz.",
      imagepath: "lib/images/drinks/pepsi.jpg",
      price: 100,
      avaiableAddons: [
        Addon(name: "Ice Cubes", price: 50),
      ],
      category: FoodCategory.drinks,
    ),

    Food(
      name: "Merinda",
      description:
          "A vibrant orange-flavored soda bursting with a sweet and tangy citrus kick.",
      imagepath: "lib/images/drinks/MERINDA.jpg",
      price: 100,
      avaiableAddons: [
        Addon(name: "Ice Cubes", price: 50),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Mountain Dew",
      description:
          "An exhilarating citrus-flavored soda that energizes and refreshes with every sip.",
      imagepath: "lib/images/drinks/dew.jpg",
      price: 100,
      avaiableAddons: [
        Addon(name: "Ice Cubes", price: 50),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Coke",
      description:
          "The timeless cola with a unique blend of flavors and a crisp, refreshing taste.",
      imagepath: "lib/images/drinks/coke.jpg",
      price: 100,
      avaiableAddons: [
        Addon(name: "Ice Cubes", price: 50),
      ],
      category: FoodCategory.drinks,
    ),
  ];

  // user cart

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'Gulshan Block 7';
  
  /*
  G E T T E R
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N
  */


  // Add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // Find the cart item with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // If found, increase the quantity; otherwise, add a new item
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
          CartItem(food: food, selectedAddons: selectedAddons, quantity: 1));
    }

    notifyListeners();
  }

  // Remove from cart
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

  // Get total price of cart
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

  // Get total item count in the cart
  int getTotalItemCount() {
    return _cart.fold(0, (count, cartItem) => count + cartItem.quantity);
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }


  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*
  H E L P E R S
  */

  //generate recipt
  String displayCartReceipt() {
    final recipt = StringBuffer();
    recipt.writeln("Here is your Receipt. ");
    recipt.writeln();

    String formmatedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    recipt.writeln(formmatedDate);
    recipt.writeln();
    recipt.writeln("--------------");

    for (final CartItem in _cart) {
      recipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");

      if (CartItem.selectedAddons.isNotEmpty) {
        recipt.writeln("  Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      recipt.writeln();
    }
    recipt.writeln("------------");
    recipt.writeln();
    recipt.writeln("Total Items: ${getTotalItemCount()}");
    recipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    recipt.writeln();
    recipt.writeln("Delivering to: $deliveryAddress");

    return recipt.toString();
  }

  //fomat double to money
  String _formatPrice(double price) {
    return "Rs. " + price.toStringAsFixed(2);
  }

  //list to sting money
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
