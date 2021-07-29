import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appInputField/textFormField.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.withOpacity(.9)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                      child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Shipping Address",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: TextFormFieldWidget(
                                    "Name", TextInputType.text, false, null),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: TextFormFieldWidget(
                                    "Address", TextInputType.text, false, null),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: TextFormFieldWidget("Pincode",
                                    TextInputType.number, false, null),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Payment Method",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: new TabBar(
                                      isScrollable: true,
                                      controller: controller,
                                      indicatorColor: Colors.red,
                                      tabs: [
                                        new Tab(
                                          child: Text(
                                            'Debit Card',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                        new Tab(
                                          child: Text(
                                            'Credit Card',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Tab(
                                          child: Text(
                                            'UPI',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Tab(
                                          child: Text(
                                            'Net Banking',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new TabBarView(
                                        physics:
                                            AlwaysScrollableScrollPhysics(),
                                        controller: controller,
                                        children: <Widget>[
                                          Container(
                                            height: 200,
                                            child: SingleChildScrollView(
                                              physics: AlwaysScrollableScrollPhysics(),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: TextFormFieldWidget(
                                                        "Name on Card",
                                                        TextInputType.text,
                                                        false,
                                                        null),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 6.0),
                                                    child: TextFormFieldWidget(
                                                        "Card Number",
                                                        TextInputType.number,
                                                        false,
                                                        null),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),

                                          Container(
                                              child: Center(
                                                  child: Text("Credit Card"))),
                                          Container(
                                              child:
                                                  Center(child: Text("UPI"))),
                                          Container(
                                              child: Center(
                                                  child: Text("Net Banking"))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "TOTAL AMOUNT",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18.0),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Container(
                                    child: Text(
                                      "\$1700.00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(40.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.remove_circle_outline,color: Colors.white,),
                                      Center(
                                        child: Text(
                                          "PLACE ORDER",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
