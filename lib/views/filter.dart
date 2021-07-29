import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int categoryIndex = 0;
  int brandIndex = 0;

  List<String> categoryList = [
    'Beds',
    'Cabinets',
    'Chairs And Seating',
    'Chests',
    'Clocks'
  ];
  List<String> brandList = [
    'Roche Bobois',
    'Edra',
    'Poliform',
    'Chirstopher Guy',
    'Kertell'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.clear,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        child: Text("Filters",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                color: Colors.grey.withOpacity(.1),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(children: <Widget>[
                            Text(
                              "Categories",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                color: Colors.grey.withOpacity(.9),
                              ),
                            )),
                          ]),
                          Container(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: categoryList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        categoryList.forEach((element) {
                                          setState(() {
                                            categoryIndex = categoryList[index]
                                                .indexOf(element);
                                            categoryIndex = index;
                                          });
                                        });
                                      },
                                      child: categoryDropDownWidget(index));
                                }),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Row(children: <Widget>[
                              Text(
                                "Brand",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: Colors.grey.withOpacity(.9),
                                ),
                              )),
                            ]),
                            Container(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: brandList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                        onTap: () {
                                          brandList.forEach((element) {
                                            setState(() {
                                              brandIndex =
                                                  categoryList.indexOf(element);
                                              brandIndex = index;
                                            });
                                          });
                                        },
                                        child: brandDropDownWidget(index));
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          AppButton("Apply Filter", 30.0, 10.0, false, () {}),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryDropDownWidget(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: categoryIndex == index ? Colors.red : Colors.grey),
                color: categoryIndex == index ? Colors.red : Colors.white,
                borderRadius: BorderRadius.circular(5.0)),
            child: categoryIndex == index
                ? Center(
                    child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ))
                : null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Container(
            child: Text(
              categoryList[index],
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }

  Widget brandDropDownWidget(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: brandIndex == index ? Colors.red : Colors.grey),
                color: brandIndex == index ? Colors.red : Colors.white,
                borderRadius: BorderRadius.circular(5.0)),
            child: brandIndex == index
                ? Center(
                    child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ))
                : null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Container(
            child: Text(
              brandList[index],
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
