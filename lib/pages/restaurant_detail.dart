import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/base/style.dart';
import 'package:foodreview_app/model/object_file.dart';
import 'package:foodreview_app/widget/comment_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantDetailPage extends StatefulWidget {
  const RestaurantDetailPage({Key key, this.restaurantObject})
      : super(key: key);

  final RestaurantObject restaurantObject;

  @override
  _RestaurantDetailPageState createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: squareDecoration.copyWith(
                color: AppColor.primaryDarkColor,
                image: DecorationImage(
                  image: AssetImage(widget.restaurantObject.imageUrl),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/check.png'))),
                    ),
                    Container(
                      width: 5,
                    ),
                    const Text(
                      'Popular item',
                      style: TextStyle(
                          color: AppColor.mediumGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Text(
                  widget.restaurantObject.restaurantName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  widget.restaurantObject.restaurantType,
                  style: const TextStyle(color: AppColor.mediumGray),
                ),
                Container(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text(widget.restaurantObject.waitingTime.toString() +
                        ' mins - ' +
                        widget.restaurantObject.distanceFromUniversity
                            .toString() +
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
                    Text(widget.restaurantObject.ratingStar.toString() +
                        ' (' +
                        widget.restaurantObject.totalAmountOfRatings
                            .toString() +
                        ')'),
                    Container(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return CommentWidget(
                                    commentObjectList: widget
                                        .restaurantObject.commentObjectList);
                              });
                        },
                        child: const Icon(Icons.chat_outlined)),
                    Container(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('you tapped this');
                        isTapped = !isTapped;
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: isTapped
                            ? const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/like.png')))
                            : const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/heart.png'))),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.mediumGray),
            ),
          ),
          Container(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColor.mediumGreen,
                    ),
                    Container(
                      width: 10,
                    ),
                     Expanded(
                        child: Text(
                      widget.restaurantObject.restaurantAddress??'402 Thôn 4, Thạch Hoà, Thạch Thất, Hà Nội, Vietnam',
                      style: const TextStyle(fontSize: 15),
                    )),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.calendar_today,
                      color: AppColor.mediumGreen,
                    ),
                    Container(
                      width: 10,
                    ),
                    const Expanded(
                        child: Text(
                      'Open Time:' + ' Open 24 hours',
                      style: TextStyle(fontSize: 15),
                    )),
                  ],
                ),
                Container(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    print('Hello');
                    // launch(('tel://0394474570'));
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 150,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 15,
                                ),
                                const Text(
                                  'LIÊN HỆ NHÀ HÀNG',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 15,
                                ),
                                RaisedButton.icon(
                                    color: AppColor.mediumGreen,
                                    onPressed: () {
                                      // ignore: unnecessary_parenthesis
                                      launch(('tel://' +
                                              widget.restaurantObject
                                                  .phoneNumber ??
                                          '0394474570'));
                                    },
                                    icon: const Icon(Icons.phone),
                                    label: Text(
                                        widget.restaurantObject.phoneNumber ??
                                            '0394474570')),
                              ],
                            ),
                          );
                        });
                  },
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone,
                        color: AppColor.mediumGreen,
                      ),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        widget.restaurantObject.phoneNumber ?? '0394474570',
                        style: const TextStyle(fontSize: 15),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.mediumGray),
            ),
          ),
          Container(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Hình ảnh cửa hàng',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 10,
                ),
                if (widget.restaurantObject.imageSlide.isNotEmpty)
                  Container(
                    height:
                        (widget.restaurantObject.imageSlide.length / 2).roundToDouble() * 200 ,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            widget.restaurantObject.imageSlide.length ?? 1,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15.0,
                                mainAxisSpacing: 15.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                  widget.restaurantObject.imageSlide[index]),
                              fit: BoxFit.cover,
                            )),
                          );
                        }),
                  )
                else
                  Container(
                    child: const Text('Hiện tại quán chưa có hình ảnh nào'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
