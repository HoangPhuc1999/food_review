import 'package:flutter/cupertino.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/model/object_file.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key key, this.restaurantObject}) : super(key: key);


  final RestaurantObject restaurantObject;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 70,
        child: Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration:  BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(restaurantObject.avatarUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 10,
                ),
                Text(
                  restaurantObject.restaurantName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 5,
                ),
                 Text(restaurantObject.phoneNumber??'0394474570'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
