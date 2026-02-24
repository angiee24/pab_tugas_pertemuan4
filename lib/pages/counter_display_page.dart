import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Order Summary',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            ...cart.itemsList.map((item) => Text(
                '${item.product.name} x${item.quantity}')),
            const SizedBox(height: 16),
            Text(
              'Total: Rp ${cart.totalPrice.toStringAsFixed(0)}',
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Your Name'),
            ),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CartModel>().clear();
                Navigator.pop(context);
              },
              child: const Text('Place Order'),
            )
          ],
        ),
      ),
    );
  }
}