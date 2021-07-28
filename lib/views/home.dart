import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/cart.dart';
import 'package:ramni_app/views/chat.dart';
import 'package:ramni_app/views/checkout.dart';
import 'package:ramni_app/views/product_detail.dart';
import 'package:ramni_app/views/profile.dart';
import 'package:ramni_app/views/splash2.dart';
import 'package:ramni_app/views/splash3.dart';
import 'package:ramni_app/views/success_msg.dart';
import 'package:ramni_app/views/welcome.dart';
import 'dart:math';

import '../utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0.0;
  SnakeShape snakeShape = SnakeShape.circle;
  Color selectedColor = Colors.white;
  int _selectedItemPosition = 1;
  List<String> listCategory = [];

  createCategoryList() {
    listCategory.add("MEN");
    listCategory.add("WOMEN");
    listCategory.add("KIDS");
    listCategory.add("PERSONAL CARE");
    listCategory.add("HOME");
  }

  categoryListItem(String strCategory, int index) {
    double leftMargin = 8;
    double rightMargin = 8;
    if (index == 0) {
      leftMargin = 12;
    }
    if (index == listCategory.length - 1) {
      rightMargin = 12;
    }
    return Container(
      child: Text(
        strCategory,
        style: CustomTextStyle.textFormFieldBold
            .copyWith(color: Colors.grey.shade800, fontSize: 12),
      ),
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          border: Border.all(color: Colors.grey.shade300, width: 1),
          color: Colors.red),
    );
  }

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
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "pankanj.patel@yahoo.com",
                      maxLines: 1,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16.0,
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
                                    builder: (context) => ChatScreen()));
                          },
                          leading: Icon(
                            Icons.category,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Upcoming Orders",
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
                                    builder: (context) => ProductDetail()));
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
                                    builder: (context) => Profile()));
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
                                    builder: (context) => SuccessScreen()));
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
                                    builder: (context) => WelcomeScreen()));
                          },
                          leading: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Splash2()));
                          },
                          leading: Icon(
                            Icons.wallpaper_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Splash2",
                            style: TextStyle(color: Colors.white),
                          )),
                      ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Splash3()));
                          },
                          leading: Icon(
                            Icons.wallpaper_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Splash3",
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
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
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
                        // height: 80,
                        backgroundColor: Colors.red,
                        behaviour: SnakeBarBehaviour.floating,
                        snakeShape: snakeShape,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        padding: EdgeInsets.all(12),

                        ///configuration for SnakeNavigationBar.color
                        snakeViewColor: selectedColor,
                        selectedItemColor: snakeShape == SnakeShape.indicator
                            ? selectedColor
                            : null,
                        unselectedItemColor: Colors.white,

                        ///configuration for SnakeNavigationBar.gradient
                        // snakeViewGradient: selectedGradient,
                        // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
                        // unselectedItemGradient: unselectedGradient,

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
                        leading: Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.black,
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
                        //Image.asset(AssetName.HumburgerIcon.name,scale: 3, ),
                      ),
                      body: SingleChildScrollView(
                        child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4),
                                  child: Container(
                                      color: Colors.white,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: Row(children: <Widget>[
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(.3),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Search",
                                              icon: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Icon(Icons.search),
                                              ),
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(.3)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 13.0,
                                                      horizontal: 16),
                                              child: Icon(
                                                  Icons.filter_alt_outlined),
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
                                              color:
                                                  Colors.grey.withOpacity(.9),
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
                                      height: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Cart(
                                                      "Ramni Chair",
                                                      "4000",
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      ""),
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
                                              color:
                                                  Colors.grey.withOpacity(.9),
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
                                      padding:
                                          EdgeInsets.only(top: 16, bottom: 16),
                                      color: Colors.yellow,
                                      width: double.infinity,
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxHeight: 30,
                                            minWidth: double.infinity),
                                        child: ListView.builder(
                                          itemBuilder: (context, index) {
                                            return categoryListItem(
                                                listCategory[index], index);
                                          },
                                          primary: false,
                                          itemCount: listCategory.length,
                                          scrollDirection: Axis.horizontal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Cart(
                                                      "Ramni Chair",
                                                      "4000",
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      ""),
                                                )),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                    )));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                value = 0;
              }
            },
            onTap: () {
              setState(() {
                value == 0 ? value = 1 : value = 0;
              });
            },
          )
        ],
      ),
    );
  }

  Widget Cart(String title, String cost, IconData icon, String imgUrl) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Image.asset(
                  AssetName.FlutterLogo.name,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text(
                  cost,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(
                    100.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
