import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "classic burger",
      description: "a juicy beef patty with melted cheddar, lettuce and tomato",
      imagePath: "lib/images/burgers/b1.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "cheese burger",
      description:
          "a beef patty topped with creamy American cheese, pickles, and onions",
      imagePath: "lib/images/burgers/b2.png",
      price: 1.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "bacon", price: 1.99),
        Addon(name: "Jalapenos", price: 1.49),
      ],
    ),
    Food(
      name: "bacon burger",
      description:
          "a beef patty with crispy bacon, lettuce, and barbecue sauce",
      imagePath: "lib/images/burgers/b3.png",
      price: 1.59,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "onions rings", price: 1.49),
        Addon(name: "bacon", price: 1.99),
      ],
    ),
    Food(
      name: "spicy burger",
      description:
          "a spicy beef patty with jalapenos, pepper jack cheese, and spicy mayo",
      imagePath: "lib/images/burgers/b4.png",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "extra spicy mayo", price: 1.19),
        Addon(name: "Jalapenos", price: 1.49),
      ],
    ),
    Food(
      name: "veggie burger",
      description:
          "a plant-based patty with fresh lettuce, tomato, and vegan cheese",
      imagePath: "lib/images/burgers/b5.png",
      price: 1.79,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "extra cheese", price: 0.99),
        Addon(name: "avocado", price: 2.49),
        Addon(name: "onions rings", price: 1.49),
      ],
    ),
    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce with Caesar dressing, croutons, and parmesan cheese",
      imagePath: "lib/images/salads/salad1.png",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "grilled chicken", price: 2.99),
        Addon(name: "extra dressing", price: 1.29),
        Addon(name: "avocado", price: 2.49),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A mix of cucumbers, tomatoes, olives, and feta cheese with olive oil dressing",
      imagePath: "lib/images/salads/salad2.png",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "grilled chicken", price: 2.99),
        Addon(name: "extra feta", price: 1.79),
        Addon(name: "hummus", price: 1.49),
      ],
    ),
    Food(
      name: "Tuna Salad",
      description:
          "Mixed greens with tuna, hard-boiled eggs, and a lemon vinaigrette dressing",
      imagePath: "lib/images/salads/salad3.png",
      price: 6.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "extra tuna", price: 2.99),
        Addon(name: "avocado", price: 2.49),
        Addon(name: "extra dressing", price: 1.29),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "A hearty salad with chicken, bacon, hard-boiled eggs, avocado, and blue cheese",
      imagePath: "lib/images/salads/salad4.png",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "extra chicken", price: 3.49),
        Addon(name: "extra bacon", price: 1.99),
        Addon(name: "extra blue cheese", price: 1.59),
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
          "A fresh mix of seasonal vegetables with a light balsamic vinaigrette",
      imagePath: "lib/images/salads/salad5.png",
      price: 3.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "grilled chicken", price: 2.99),
        Addon(name: "extra dressing", price: 1.29),
        Addon(name: "avocado", price: 2.49),
      ],
    ),
    //sides
    Food(
      name: "French Fries",
      description:
          "Crispy golden fries, lightly salted and served with ketchup",
      imagePath: "lib/images/sides/s1.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "cheese sauce", price: 1.29),
        Addon(name: "bacon bits", price: 1.49),
        Addon(name: "garlic butter", price: 1.19),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy battered onion rings, served with a side of dipping sauce",
      imagePath: "lib/images/sides/s2.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "extra dipping sauce", price: 0.79),
        Addon(name: "cheese dip", price: 1.29),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description:
          "Breaded mozzarella cheese sticks, served with marinara sauce",
      imagePath: "lib/images/sides/s3.png",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "extra marinara", price: 1.19),
        Addon(name: "cheese dip", price: 1.29),
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "Creamy coleslaw made with fresh cabbage and a tangy dressing",
      imagePath: "lib/images/sides/s4.png",
      price: 2.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "extra dressing", price: 1.19),
        Addon(name: "grilled chicken", price: 2.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description:
          "Crispy sweet potato fries, lightly salted and served with a honey mustard dip",
      imagePath: "lib/images/sides/s5.png",
      price: 3.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "extra honey mustard", price: 1.19),
        Addon(name: "bacon bits", price: 1.49),
      ],
    ),
    //desserts
    Food(
      name: "Chocolate Cake",
      description:
          "A rich and moist chocolate cake topped with a velvety chocolate ganache",
      imagePath: "lib/images/desserts/d1.png",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "vanilla ice cream", price: 1.49),
        Addon(name: "extra chocolate sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy cheesecake with a buttery graham cracker crust, topped with fresh berries",
      imagePath: "lib/images/desserts/d2.png",
      price: 4.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "extra berries", price: 1.29),
        Addon(name: "chocolate drizzle", price: 1.49),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Warm apple pie with a buttery crust, served with a scoop of vanilla ice cream",
      imagePath: "lib/images/desserts/d3.png",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "extra ice cream", price: 1.49),
        Addon(name: "caramel sauce", price: 1.19),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "A classic Italian dessert made with layers of coffee-soaked ladyfingers and mascarpone cream",
      imagePath: "lib/images/desserts/d4.png",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "extra cocoa powder", price: 0.79),
        Addon(name: "whipped cream", price: 1.19),
      ],
    ),
    Food(
      name: "Brownie",
      description:
          "A fudgy chocolate brownie, served warm with a scoop of vanilla ice cream",
      imagePath: "lib/images/desserts/d5.png",
      price: 3.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "extra chocolate chips", price: 1.29),
        Addon(name: "whipped cream", price: 1.19),
      ],
    ),
    //drinks
    Food(
      name: "Coca-Cola",
      description: "A refreshing classic cola drink served chilled",
      imagePath: "lib/images/drinks/drink1.png",
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "extra ice", price: 0.49),
        Addon(name: "lime slice", price: 0.79),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "A tangy and sweet lemonade made with fresh lemons and sugar",
      imagePath: "lib/images/drinks/drink2.png",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "extra sugar", price: 0.49),
        Addon(name: "mint leaves", price: 0.79),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served with ice",
      imagePath: "lib/images/drinks/drink3.png",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "extra lemon", price: 0.59),
        Addon(name: "sweetener", price: 0.79),
      ],
    ),
    Food(
      name: "Milkshake",
      description:
          "A creamy milkshake made with vanilla ice cream and milk, blended to perfection",
      imagePath: "lib/images/drinks/drink4.png",
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "extra whipped cream", price: 0.99),
        Addon(name: "chocolate syrup", price: 1.29),
      ],
    ),
    Food(
      name: "Coffee",
      description:
          "Freshly brewed coffee, served hot or iced, with a rich aroma",
      imagePath: "lib/images/drinks/drink5.png",
      price: 2.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "extra cream", price: 0.49),
        Addon(name: "flavored syrup", price: 0.79),
      ],
    ),
  ];

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'amman 22 street';

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

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

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
    String formattedDate = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");
    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
