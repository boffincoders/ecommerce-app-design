import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/enum/assets.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final formKey = GlobalKey();
  List<IconData> iconList = [
    Icons.car_repair,
    Icons.add_location,
    Icons.payment,
    Icons.add_chart
  ];
  List<String> listNames = [
    'Upcoming Orders',
    'Manage Address',
    'Update Payment',
    'My Chats'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Scaffold(
            body: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 12.0),
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                      onTap: (){
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(child: Image.asset(AssetName.ArrowLeft.name))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Container(
                                    child: Text(
                                      "My Account",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AppButton("Edit Profile", 10.0, 2.0, true, () {})
                          ],
                        ),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    border: Border.all(
                                        width: 2, color: Colors.white)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      "https://picsum.photos/seed/picsum/200/300",
                                      fit: BoxFit.fill,
                                      scale: 5,
                                    )),
                              ),
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
                              height: 5.0,
                            ),
                            Text(
                              "pankanj.patel@yahoo.com",
                              maxLines: 1,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                child: Center(
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        // color: Colors.yellow,
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: container(iconList, listNames, index),
                                ))))),
          )
        ]));
  }

  Widget container(List icon, List title, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon[index],
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    title[index],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ]),
          Badge(
            badgeColor: Colors.grey.withOpacity(.2),
            shape: BadgeShape.circle,
            elevation: 0,
            position: BadgePosition.topEnd(top: 15, end: 1),
            badgeContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text("${index}"),
            ),
          )
        ],
      ),
    );
  }
}
