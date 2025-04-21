import 'package:flutter/material.dart';
import 'package:myapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Thank you message with slightly smaller font size
            const Text(
              "Thank you for your order!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13, // Font size reduced to 13
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6), // Reduced space

            // Receipt container with slightly reduced padding
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12), // Padding reduced to 12
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()), // Display receipt
              ),
            ),

            const SizedBox(height: 10), // Reduced space

            // Delivery time message with slightly smaller font size
            const Text(
              "Estimated delivery time is: 4:18 PM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11, // Font size reduced to 11
              ),
            ),

            const SizedBox(height: 10), // Reduced space

            // Return button
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Return to Home"), // Static button text
            ),
          ],
        ),
      ),
    );
  }
}
