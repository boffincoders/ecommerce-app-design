import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/enum/assets.dart';

class Carts extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Carts> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      child: Text(
                        "Your Cart",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.withOpacity(.9)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                      child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: cart_widget(AssetName.CupPic.name,
                                  "Ramni chair", "\$17000", "3"),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "Total Amount",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "\$1700",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 55.0, vertical: 10),
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15.0),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(40.0)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Icon(Icons.remove_circle_outline,color: Colors.white,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      child: Center(
                                        child: Text(
                                          "CHECKOUT",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )))
            ],
          ),
        ),
      ),
    );
  }

  Widget cart_widget(
      String imageAsset, String title, String cost, String counter) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Container(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: Text(
                        cost,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Icon(Icons.remove_circle_outline,
                            color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          counter,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
