import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/enum/assets.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  late final pageController;
  var selectedIndex = 0;
  bool isSelectedIndex = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Container(
                        child: Image.asset(
                      AssetName.HeartIcon.name,
                      scale: 1,
                    ))
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            child: PageView.builder(
                                onPageChanged: (index) {
                                  selectedIndex = index;
                                  setState(() {
                                    isSelectedIndex = true;
                                  });
                                },
                                controller: pageController,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Image.asset(
                                      AssetName.ChairPic.name,
                                      fit: BoxFit.fill,
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  3,
                                  (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Container(
                                          height: 6,
                                          width: 12,
                                          decoration: BoxDecoration(
                                              color: selectedIndex == index
                                                  ? Colors.red
                                                  : Colors.grey,
                                              shape: selectedIndex == index
                                                  ? BoxShape.rectangle
                                                  : BoxShape.circle),
                                        ),
                                      )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Ramni Chair",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "\$1700",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                              color: Colors.white,
                            ),
                            child: new TabBar(
                              controller: controller,
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              indicatorColor: Colors.red,
                              tabs: [
                                new Tab(
                                  child: Text(
                                    'Description',
                                    style: TextStyle(
                                        color: controller.index == 0
                                            ? Colors.red
                                            : Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                new Tab(
                                  child: Text(
                                    'Review',
                                    style: TextStyle(
                                        color: controller.index == 1
                                            ? Colors.red
                                            : Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                new Tab(
                                  child: Text(
                                    'Offers',
                                    style: TextStyle(
                                        color: controller.index == 2
                                            ? Colors.red
                                            : Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                new Tab(
                                  child: Text(
                                    'policy',
                                    style: TextStyle(
                                        color: controller.index == 3
                                            ? Colors.red
                                            : Colors.black,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: new TabBarView(
                                controller: controller,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                        child: Text(
                                      "Minimalist Styling Is Not about creating a cold,hard,empty,white box of a home.It is about using simple and natural forms.And taking away layers without losing the Aesthetic appeal of the space.The Focus is on Shape.With a furniture and accessories.",
                                      style: TextStyle(color: Colors.black54),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                        child: Text(
                                            "Minimalist Styling Is Not about creating a cold,hard,empty,white box of a home.It is about using simple and natural forms.And taking away layers without losing the Aesthetic appeal of the space.The Focus is on Shape.With a furniture and accessories.",
                                            style: TextStyle(
                                                color: Colors.black54))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                        child: Text(
                                            "Minimalist Styling Is Not about creating a cold,hard,empty,white box of a home.It is about using simple and natural forms.And taking away layers without losing the Aesthetic appeal of the space.The Focus is on Shape.With a furniture and accessories.",
                                            style: TextStyle(
                                                color: Colors.black54))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                        child: Text(
                                            "Minimalist Styling Is Not about creating a cold,hard,empty,white box of a home.It is about using simple and natural forms.And taking away layers without losing the Aesthetic appeal of the space.The Focus is on Shape.With a furniture and accessories.",
                                            style: TextStyle(
                                                color: Colors.black54))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              )),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: Row(
                                children: [
                                  // Icon(Icons.remove_circle_outline,color: Colors.white,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Text(
                                      "ADD TO CART",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              )),
                        )
                      ],
                    )
                  ])))
            ],
          ),
        ),
      ),
    );
  }
}

