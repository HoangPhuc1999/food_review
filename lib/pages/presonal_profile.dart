import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/base/style.dart';
import 'package:foodreview_app/model/object_file.dart';
import 'package:foodreview_app/widget/high_rating_restaurant.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({Key key, this.restaurantObject}) : super(key: key);

  final List<RestaurantObject> restaurantObject;

  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  final List<String> imageList = <String>[
    'assets/per1.jpg',
    'assets/per2.jpg',
    'assets/per3.jpg',
    'assets/per4.jpg',
    'assets/per5.jpg',
    'assets/per6.jpg',
    'assets/per7.jpg',
    'assets/per8.jpg',
    'assets/nem4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: AppColor.green,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/avatar5.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 10,
                    ),
                    const Text(
                      'Nguyễn Hoàng Phúc',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 5,
                    ),
                    const Text('09383474656'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: GestureDetector(
              child: Container(
                height: 30,
                decoration: circularDecoration.copyWith(
                  color: AppColor.mediumGray,
                ),
                child: const Center(
                    child: Text(
                  'Edit profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          Container(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'PERSONAL FAVOURITE',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  height: 20,
                ),
              ],
            ),
          ),
          HighRatingRestaurant(
            restaurantObjectList: widget.restaurantObject,
          ),
          Container(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'SHARE YOUR MOMENTS',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: (imageList.length / 4).roundToDouble() * 200,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imageList.length ?? 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(imageList[index]),
                        fit: BoxFit.cover,
                      )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
