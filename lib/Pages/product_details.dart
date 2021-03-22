import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.product_details_picture),
                )),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Text(widget.product_details_name),
            ),
          ),
        ],
      ),
    );
  }
}
//17