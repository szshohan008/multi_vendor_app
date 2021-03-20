import 'package:flutter/material.dart';
import 'package:multivendorapp/Pages/LoginPage.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/category/tshirt.png',
            image_caption: 't-shirt',
          ),
          Category(
            image_location: 'images/category/tshirt.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/category/tshirt.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/category/tshirt.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/category/tshirt.png',
            image_caption: 'Pants',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 80.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
