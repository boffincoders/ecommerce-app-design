import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/cart.dart';
import 'package:ramni_app/views/chat.dart';
import 'package:ramni_app/views/checkout.dart';
import 'package:ramni_app/views/filter.dart';
import 'package:ramni_app/views/product_detail.dart';
import 'package:ramni_app/views/profile.dart';
import 'dart:math';

import 'package:ramni_app/views/success_msg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;
  SnakeShape snakeShape = SnakeShape.circle;
  Color selectedColor = Colors.white;
  int _selectedItemPosition = 1;
  List<String> filterCategory = [
    'All',
    'Electronics And Appliances',
    'Shirt',
    'Men',
    'Cosmetics'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.redAccent,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
          SafeArea(
              child: Container(
            width: 200.0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DrawerHeader(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300",
                          scale: 1),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Pankanj Patel",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "pankanj.patel@yahoo.com",
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Home",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Carts()));
                          },
                          leading: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          title: Text(
                            "My Cart",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail()));
                          },
                          leading: Icon(
                            Icons.category,
                            color: Colors.white,
                          ),
                          title: Badge(
                            shape: BadgeShape.square,
                            elevation: 0,
                            position: BadgePosition.topEnd(top: 15, end: 1),
                            badgeContent: Container(
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                "3",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                            child: Text(
                              "Upcoming Orders",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      ListTile(
                          onTap: () {
                            /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout()));*/
                          },
                          leading: Icon(
                            Icons.card_giftcard,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Offer Zone",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          leading: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            "My Account",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                          leading: Icon(
                            Icons.comment_bank_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Chat",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout()));
                          },
                          leading: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Help",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filter()));
                          },
                          leading: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Filter",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SuccessScreen()));
                          },
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
          TweenAnimationBuilder(
              curve: Curves.easeInExpo,
              tween: Tween<double>(begin: 0, end: value.toDouble()),
              duration: Duration(milliseconds: 200),
              builder: (_, double val, __) {
                return (Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0, 3, 200 * val)
                      ..rotateY((pi / 6) * val),
                    child: Scaffold(
                        // backgroundColor: Colors.yellow,
                        bottomNavigationBar: SnakeNavigationBar.color(
                          backgroundColor: Colors.red,
                          behaviour: SnakeBarBehaviour.floating,
                          snakeShape: snakeShape,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          padding: EdgeInsets.all(12),
                          snakeViewColor: selectedColor,
                          selectedItemColor: snakeShape == SnakeShape.indicator
                              ? selectedColor
                              : Colors.red,
                          unselectedItemColor: Colors.white,
                          showUnselectedLabels: false,
                          showSelectedLabels: false,
                          currentIndex: _selectedItemPosition,
                          onTap: (index) =>
                              setState(() => _selectedItemPosition = index),
                          items: [
                            const BottomNavigationBarItem(
                              icon: Icon(Icons.category),
                            ),
                            const BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                            ),
                            const BottomNavigationBarItem(
                              icon: Icon(Icons.person),
                            ),
                          ],
                          selectedLabelStyle: const TextStyle(fontSize: 14),
                          unselectedLabelStyle: const TextStyle(fontSize: 10),
                        ),
                        appBar: AppBar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          leading: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                value == 0 ? value = 1 : value = 0;
                              });
                            },
                            child: Icon(
                              Icons.menu,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Badge(
                                position: BadgePosition.topEnd(top: 8, end: 3),
                                child: Icon(
                                  Icons.notifications_none,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        body: selectItemWidget(_selectedItemPosition))));
              }),
        ],
      ),
    );
  }

  Widget Cart(String title, String cost, IconData icon, String imgUrl) {
    return Container(
      height: 120,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 100,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    AssetName.ChairPic.name,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 5.0),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: Text(
                        cost,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(
                          100.0,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 16,
                          color: Colors.red.withOpacity(.6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  selectItemWidget(int _selectedItem) {
    switch (_selectedItem) {
      case 0:
        return Container(
          child: Center(child: Text("Home")),
        );
      case 1:
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(children: <Widget>[
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.grey.withOpacity(.1),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(.1),
                                    width: 1)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                icon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.search),
                                ),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.1)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 13.0, horizontal: 16),
                                child: Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.black.withOpacity(.3),
                                ),
                              ),
                            ),
                          )
                        ])),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 18),
                        child: Container(
                          child: Row(children: <Widget>[
                            Text(
                              "TRENDING PRODUCTS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                color: Colors.grey.withOpacity(.9),
                              ),
                            )),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                              color: Colors.black12, width: 2)),
                                      child: Cart("Ramni Chair", "\$4000",
                                          Icons.shopping_cart_outlined, ""),
                                    ),
                                  )),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 18),
                        child: Container(
                          child: Row(children: <Widget>[
                            Text(
                              "POPULAR CATEGORIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                color: Colors.grey.withOpacity(.9),
                              ),
                            )),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filterCategory.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: FilterChip(
                                backgroundColor: filterCategory[index] == "All"
                                    ? Colors.red
                                    : Colors.black12,
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 7),
                                  child: Text(
                                    filterCategory[index],
                                    style: TextStyle(
                                        color: filterCategory[index] == "All"
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                                selectedColor: Colors.red,
                                onSelected: (bool selected) {
                                  setState(() {});
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                              color: Colors.black12, width: 2)),
                                      child: Cart("Ramni Chair", "\$4000",
                                          Icons.shopping_cart_outlined, ""),
                                    ),
                                  )),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        );
      case 2:
        return Container(
          child: Center(child: Text("Profile")),
        );
    }
  }
}
