import 'package:agri_higala/pages/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/product.dart';
import '../Providers/cart.dart';

class ProductItem extends StatelessWidget {
  // final String image, name, location;
  // final int id;
  // final double price;

  // ProductItem(this.image, this.id, this.location, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetails.routeName, arguments: product.id);
          },
          child: Image.asset(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
        header: GridTileBar(
          backgroundColor: Colors.transparent,
          title: RaisedButton(
              color: Colors.green[400],
              child: Text(
                'Add to Cart',
              ),
              onPressed: () {
                cart.addItem(
                  product.id.toString(),
                  product.price,
                  product.name,
                  product.unitType,
                  product.location,
                  product.stock,
                  product.image,
                  product.seller,
                );
              }),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Column(children: [
            Text(product.name, textAlign: TextAlign.center),
            Text(
              product.price.toString() + '0' + ' Per Kilo',
              textAlign: TextAlign.center,
            ),
            Text(product.location, textAlign: TextAlign.center),
          ]),
        ),
      ),
    );
  }
}
