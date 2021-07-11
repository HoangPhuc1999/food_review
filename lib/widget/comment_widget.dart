import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';
import 'package:foodreview_app/model/object_file.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key key, this.commentObjectList}) : super(key: key);

  final List<CommentObject> commentObjectList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/heart.png'))),
                ),
                Container(
                  width: 10,
                ),
                const Text(
                  '30',
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  width: 30,
                ),

                const Icon(
                  Icons.chat_outlined,
                  size: 30,
                ),
                Container(
                  width: 10,
                ),
                const Text(
                  '10',
                  style: TextStyle(fontSize: 25),
                ),

                // Icon(Icons.chat_outlined),
              ],
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 500,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      height: 20,
                    ),
                itemCount: commentObjectList.length ?? 1,
                itemBuilder: (BuildContext context, int index) {
                  return commentItems(context,commentObjectList[index]);
                }),
          ),
        ],
      ),
    );
  }

  Widget commentItems(BuildContext context, CommentObject commentObject) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration:  BoxDecoration(
              color: AppColor.green,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(commentObject.profileAvatar),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Tom Holland',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 10,
                ),
                 Text(
                  commentObject.commentCaption,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
