import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/model/object_file.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key key, this.feedPost}) : super(key: key);

  final FeedPost feedPost;

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
                icon:  const Icon(Icons.close,color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(widget.feedPost.imageUrl),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
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
                  widget.feedPost.profileName,
                  style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 5,
                ),
                Text(
                  widget.feedPost.postCaption ??'Bài này chưa có caption hihihi =)',
                  style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
