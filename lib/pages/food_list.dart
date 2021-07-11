import 'package:flutter/cupertino.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/base/route.dart';

import '../base/style.dart';
import '../model/object_file.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key key, this.restaurantObjectList}) : super(key: key);

  final List<RestaurantObject> restaurantObjectList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 120.0 * restaurantObjectList.length,
        color: AppColor.white,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) => Container(
            height: 10,
          ),
          itemCount: restaurantObjectList.length,
          itemBuilder: (BuildContext context, int index) {
            return listOfRestaurant(restaurantObjectList[index], context);
          },
        ),
      ),
    );
  }

  Widget listOfRestaurant(
      RestaurantObject restaurantObject, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.restaurantDetailPage,
            arguments: <String, dynamic>{
              'restaurantObject': restaurantObject,
            });
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 110,
            width: 110,
            decoration: filmBoxDecoration.copyWith(
                color: AppColor.primaryDarkColor,
                image: DecorationImage(
                  image: AssetImage(restaurantObject.imageUrl),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                height: 10,
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
                height: 10,
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
    );
  }
}
