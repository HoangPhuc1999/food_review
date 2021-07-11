import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/base/route.dart';
import 'package:foodreview_app/model/object_file.dart';
import 'package:foodreview_app/pages/feed_post.dart';

class NewFeedPage extends StatefulWidget {
  @override
  _NewFeedPageState createState() => _NewFeedPageState();
}

class _NewFeedPageState extends State<NewFeedPage> {
  static final List<FeedPost> feedPostList = <FeedPost>[
    FeedPost(
      imageUrl: 'assets/post3.jpeg',
      profileAvatar: 'assets/logo.png',
      profileName: 'Coc doi Team',
    ),
    FeedPost(
      imageUrl: 'assets/post1.jpeg',
      profileAvatar: 'assets/logo.png',
      profileName: 'Coc doi Team',
    ),
    FeedPost(
      imageUrl: 'assets/post2.jpeg',
      profileAvatar: 'assets/logo.png',
      profileName: 'Coc doi Team',
    ),
    FeedPost(
        imageUrl: 'assets/post4.jpeg',
        profileAvatar: 'assets/logo.png',
        profileName: 'Coc doi Team',
        postCaption:
            'Hi mọi người, chắc ai cũng đã biết đến sự việc Ronaldo cất đi 2 chai Coca-Cola và thay vào đó là một chai nước lọc trong buổi họp báo trước trận Bồ Đào Nha gặp Hungary tại EURO 2020.Hôm nay, nhóm chúng mình sẽ cung cấp một vài thông tin về tác hại của nước ngọt có ga đối với cơ thể và sức khỏe để mọi người hiểu được phần nào nguyên nhân Anh Bảy làm như vậy.' +
                firstPost()),
    FeedPost(
      imageUrl: 'assets/post5.jpeg',
      profileAvatar: 'assets/logo.png',
      profileName: 'Coc doi Team',
      postCaption: secondPost(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            'FUFood',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: 600 * (feedPostList.length) * 1.0,
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: feedPostList.length,
              separatorBuilder: (BuildContext context, int index) => Container(
                height: 20,
              ),
              itemBuilder: (BuildContext context, int index) {
                return feedPost(context, feedPostList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget feedPost(BuildContext context, FeedPost feedPost) {
    return Column(
      children: <Widget>[
        Container(
          height: 70,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(feedPost.profileAvatar),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  width: 10,
                ),
                Text(
                  feedPost.profileName,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.green,
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(feedPost.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/heart.png'))),
                ),
                Container(
                  width: 20,
                ),
                Container(
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/speechbubble.png'))),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '30' + ' likes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 0,
              ),
              Text(
                feedPost.profileName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.postDetailPage,
                      arguments: <String, dynamic>{
                        'feedPost': feedPost,
                      });
                },
                child: const Text(
                  'View full post',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
