import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/route.dart';
import 'package:foodreview_app/model/object_file.dart';
import 'package:foodreview_app/widget/avatar_widget.dart';
import 'package:foodreview_app/widget/high_rating_restaurant.dart';

import '../base/color.dart';
import '../base/style.dart';
import 'food_list.dart';

class FoodSlide extends StatefulWidget {
  const FoodSlide({Key key, this.restaurantObject}) : super(key: key);

  final List<RestaurantObject> restaurantObject;

  @override
  _FoodSlideState createState() => _FoodSlideState();
}

class _FoodSlideState extends State<FoodSlide> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(widget.restaurantObject.length.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: 20,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 20, left: 20),
          //   child: GestureDetector(
          //     onTap: () {
          //       print('Tap');
          //       Navigator.pushNamed(
          //           context, RoutesName.searchPage,
          //           arguments: <String, dynamic>{
          //             'restaurantObjectList':
          //             widget.restaurantObject,
          //           });
          //     },
          //     child: Container(
          //       height: 50,
          //       decoration: circularDecoration.copyWith(
          //         color: AppColor.lightGray,
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: <Widget>[
          //             const Icon(Icons.search),
          //             Container(
          //               width: 10,
          //             ),
          //             const Text('What are you craving ?'),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'WHAT\'S NEW TODAY',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 20,
              ),
              Container(
                child: CarouselSlider.builder(
                  itemCount: widget.restaurantObject.length,
                  options: CarouselOptions(
                    aspectRatio: 1 / 1,
                    height: 200,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.9,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    onPageChanged:
                        (int index, CarouselPageChangedReason reason) {
                      print('change image');
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final RestaurantObject restaurantPic =
                        widget.restaurantObject[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesName.restaurantDetailPage,
                            arguments: <String, dynamic>{
                              'restaurantObject':
                                  widget.restaurantObject[index],
                            });
                      },
                      child: Container(
                        decoration: filmBoxDecoration.copyWith(
                          color: AppColor.primaryDarkColor,
                          image: restaurantPic.imageUrl != null
                              ? DecorationImage(
                                  image: AssetImage(restaurantPic.imageUrl),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: restaurantPic.imageUrl == null
                            ? const Center(child: CircularProgressIndicator())
                            : null,
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 20,
              ),
              AvatarWidget(
                restaurantObject: widget.restaurantObject[_selectedIndex],
              ),
              Container(
                height: 10,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'HIGH RATING RESTAURANT (ABOVE 4',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 30,
                width: 20,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/star.jpeg'))),
              ),
              const Text(
                ')',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          HighRatingRestaurant(
            restaurantObjectList: widget.restaurantObject,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'BROWSE ALL',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            height: 20,
          ),
          FoodList(
            restaurantObjectList: widget.restaurantObject,
          ),
        ],
      ),
    );
  }
}
