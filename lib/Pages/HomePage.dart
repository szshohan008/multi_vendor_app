import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:multivendorapp/Components/horizontal_listview.dart';
import 'package:multivendorapp/Components/Products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 180,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/01.jpg'),
          AssetImage('images/02.jpg'),
          AssetImage('images/04.jpg'),
          AssetImage('images/05.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        dotColor: Colors.teal,
        indicatorBgPadding: 4.0,
      ),

    );

    return Scaffold(
      appBar:  AppBar(
        title: Text("Shopping"),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('AkZ'), accountEmail: Text('akz@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),

            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('Category'),
          ),

          //Horizontal ListView
          HorizontalList(),

          Padding(padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

