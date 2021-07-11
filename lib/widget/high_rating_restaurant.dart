import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/base/route.dart';
import 'package:foodreview_app/base/style.dart';
import 'package:foodreview_app/model/object_file.dart';

class HighRatingRestaurant extends StatelessWidget {
  const HighRatingRestaurant({Key key, this.restaurantObjectList})
      : super(key: key);

  final List<RestaurantObject> restaurantObjectList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: AppColor.white,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) => Container(
                width: 0,
              ),
          itemCount: restaurantObjectList.length,
          itemBuilder: (BuildContext context, int index) {
            return listOfRestaurant(restaurantObjectList[index],context);
          }),
    );
  }

  Widget listOfRestaurant(RestaurantObject restaurantObject,BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 20,
          // color: AppColor.red,
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, RoutesName.restaurantDetailPage,
                arguments: <String, dynamic>{
                  'restaurantObject': restaurantObject,
                });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 190,
                height: 190,
                decoration: filmBoxDecoration.copyWith(
                    color: AppColor.primaryDarkColor,
                    image: DecorationImage(
                      image: AssetImage(restaurantObject.imageUrl),
                      fit: BoxFit.cover,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 5,
                  ),
                  const Text(
                    'PROMO',
                    style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Container(
                    height: 5,
                  ),
                  Text(
                    restaurantObject.restaurantName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(restaurantObject.waitingTime.toString() +
                          ' mins - ' +
                          restaurantObject.distanceFromUniversity.toString() +
                          ' km '),
                      Container(
                        width: 5,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/star.jpeg'))),
                      ),
                      Text(restaurantObject.ratingStar.toString() +
                          ' (' +
                          restaurantObject.totalAmountOfRatings.toString() +
                          ')'),
                    ],
                  ),
                  Container(
                    height: 5,
                  ),
                  // Text('Closing soon',style: TextStyle(color: AppColor.red),),
                  Text(
                    restaurantObject.restaurantType,
                    style: const TextStyle(color: AppColor.mediumGray),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
