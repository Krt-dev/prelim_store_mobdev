import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storeapp/Model/places_model.dart';
import 'package:storeapp/app_styles.dart';
import 'package:storeapp/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _buildUI());
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Cart"),
    );
  }

  Widget _buildUI() {
    return Consumer<CartProvider>(builder: (context, provider, _) {
      return Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: provider.items.length,
              itemBuilder: (context, index) {
                Places places = provider.items[index];
                return ListTile(
                  title: Text(places.name),
                  subtitle: Text('\$${places.price}'),
                  leading: Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(26),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          places.thumbnail,
                        ),
                      ),
                    ),
                  ),
                  onLongPress: () {
                    provider.remove(places);
                  },
                );
              },
            ),
          ),
          Container(
              color: kBlue,
              width: 400,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Ticket Total: \$${provider.getCartTotal()}",
                style: const TextStyle(color: Colors.white),
              ))
        ],
      );
    });
  }
}
