import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: IntrinsicHeight( // ✅ تعديل 3: ضبط الارتفاع وفقًا للمحتوى
        child: Column(
          mainAxisSize: MainAxisSize.min, // ✅ تعديل 4: منع `Column` من استخدام كل المساحة المتاحة
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order"),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) {
                  return Text(restaurant.displayCartReceipt());
                },
              ),
            ),
            const SizedBox(height: 25),
            const Text("Estimated delivery time: 30 minutes"),
          ],
        ),
      ),
    );
  }
}
