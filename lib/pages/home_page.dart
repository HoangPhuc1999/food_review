import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/pages/food_slide.dart';
import 'package:foodreview_app/pages/newFeed_page.dart';
import 'package:foodreview_app/pages/presonal_profile.dart';
import 'package:foodreview_app/pages/search_page.dart';

import '../model/object_file.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<RestaurantObject> restaurantImage = <RestaurantObject>[
    RestaurantObject(
      restaurantAddress: 'Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0962575688',
      imageUrl: 'assets/met1.jpeg',
      restaurantName: 'Bún đậu mẹt - Gốc Sung Quán',
      searchKeyWord: 'bun dau',
      ownerName: 'Nguyễn Văn D',
      avatarUrl: 'assets/avatar4.jpeg',
      waitingTime: 15,
      distanceFromUniversity: 2.7,
      ratingStar: 4.7,
      totalAmountOfRatings: 10,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/picture3.png',
        'assets/met1.jpeg',
        'assets/met2.jpeg',
        'assets/met4.jpeg',
        'assets/met6.png',
        'assets/met7.png',
        'assets/met8.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: '402 Thôn 4, Thạch Hoà, Thạch Thất, Hà Nội, Vietnam',
      phoneNumber: '093492891',
      imageUrl: 'assets/picture4.png',
      restaurantName: 'Bánh mì thập cẩm ',
      searchKeyWord: 'banh mi',
      ownerName: 'Nguyễn Văn A',
      avatarUrl: 'assets/avatar1.jpeg',
      waitingTime: 23,
      distanceFromUniversity: 3.7,
      ratingStar: 4.2,
      totalAmountOfRatings: 10,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/banhmi.png',
        'assets/banhmiteo.png',
        'assets/banhmiteo1.jpeg',
        'assets/banhmiteo2.jpeg',
        'assets/banhmiteo3.jpeg',
        'assets/banhmiteo4.jpeg',
        'assets/banhmiteo5.jpeg',
        'assets/banhmiteo6.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: '402 Thôn 4, Thạch Hoà, Thạch Thất, Hà Nội, Vietnam',
      phoneNumber: '0961570999',
      imageUrl: 'assets/ga7.jpeg',
      restaurantName: 'Nhà Hàng Vịt cỏ Vân Đình ',
      searchKeyWord: 'vit ga',
      ownerName: 'Nguyễn Văn B',
      avatarUrl: 'assets/avatar2.jpeg',
      waitingTime: 20,
      distanceFromUniversity: 2.7,
      ratingStar: 4.3,
      totalAmountOfRatings: 20,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/ga1.png',
        'assets/ga2.png',
        'assets/ga3.png',
        'assets/ga4.jpeg',
        'assets/g5.jpeg',
        'assets/ga6.jpeg',
        'assets/picture1.png',
        'assets/ga8.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress:
          'Gần cây xăng 39, Thôn 8, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0337890055',
      imageUrl: 'assets/char10.png',
      restaurantName: 'Charmcha ',
      searchKeyWord: 'tra sua',
      ownerName: 'Nguyễn Văn C',
      avatarUrl: 'assets/avatar3.jpeg',
      waitingTime: 10,
      distanceFromUniversity: 1.1,
      ratingStar: 4.7,
      totalAmountOfRatings: 17,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/char1.png',
        'assets/char2.png',
        'assets/char3.png',
        'assets/char4.png',
        'assets/char5.png',
        'assets/char6.png',
        'assets/char7.png',
        'assets/char8.png',
        'assets/char9.png',
        'assets/picture2.png',
        'assets/char11.png',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      phoneNumber: '0973927676',
      imageUrl: 'assets/picture5.png',
      restaurantName: 'Phở Cuốn - Phạm Ngân',
      searchKeyWord: 'pho cuon',
      ownerName: 'Phạm Ngân',
      avatarUrl: 'assets/avatar5.png',
      waitingTime: 23,
      distanceFromUniversity: 3.7,
      ratingStar: 4.2,
      totalAmountOfRatings: 20,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/phocuon1.jpeg',
        'assets/phocuon2.jpeg',
        'assets/phocuon3.jpeg',
        'assets/phocuon4.png',
        'assets/phocuon5.png',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      phoneNumber: '0342436528',
      imageUrl: 'assets/nem3.jpeg',
      restaurantName: 'Nem Nướng Hùng Anh ',
      searchKeyWord: 'nem nuong',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 23,
      distanceFromUniversity: 3.7,
      ratingStar: 4.2,
      totalAmountOfRatings: 20,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/nem1.png',
        'assets/nem2.png',
        'assets/picture6.png',
        'assets/nem4.jpeg',
        'assets/nem5.jpeg',
        'assets/nem6.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: '402 Thôn 4, Thạch Hoà, Thạch Thất, Hà Nội, Vietnam',
      phoneNumber: '0866144282',
      imageUrl: 'assets/beo1.jpeg',
      restaurantName: 'Ăn Vặt Chị Béo TOKBOKKI ',
      searchKeyWord: 'nem',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 10,
      distanceFromUniversity: 1.7,
      ratingStar: 4.2,
      totalAmountOfRatings: 19,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/beo1.jpeg',
        'assets/beo2.jpeg',
        'assets/beo3.jpeg',
        'assets/beo4.jpeg',
        'assets/beo5.jpeg',
        'assets/beo6.jpeg',
        'assets/beo7.jpeg',
        'assets/beo8.jpeg',
        'assets/beo9.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: 'QL21, Bình Yên, Thạch Thất, Hà Nội, Vietnam',
      phoneNumber: '0385748668',
      imageUrl: 'assets/phobo1.jpeg',
      restaurantName: 'Phở Bò Nam Nhất',
      searchKeyWord: 'pho bo',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 20,
      distanceFromUniversity: 4.8,
      ratingStar: 4.5,
      totalAmountOfRatings: 45,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/phobo1.jpeg',
        'assets/phobo2.jpeg',
        'assets/phobo3.jpeg',
        'assets/phobo4.jpeg',
        'assets/phobo5.jpeg',
        'assets/phobo6.jpeg',
        'assets/phobo7.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress:
          'Khu Công Nghệ Cao Hòa Lạc, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0329656565',
      imageUrl: 'assets/quan4.png',
      restaurantName: 'Nhà Hàng 1988',
      searchKeyWord: '1988',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 15,
      distanceFromUniversity: 1.6,
      ratingStar: 4.5,
      totalAmountOfRatings: 57,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/quan1.png',
        'assets/quan2.png',
        'assets/quan3.png',
        'assets/quan4.png',
        'assets/quan5.png',
        'assets/quan6.png',
        'assets/quan7.png',
        'assets/quan8.png',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: 'QL21A, Thạch Hoà, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0973251212',
      imageUrl: 'assets/chanh5.png',
      restaurantName: 'The 1994',
      searchKeyWord: '1994',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 5,
      distanceFromUniversity: 1.7,
      ratingStar: 4.5,
      totalAmountOfRatings: 7,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/chanh1.png',
        'assets/chanh2.png',
        'assets/chanh3.png',
        'assets/chanh4.png',
        'assets/chanh5.png',
        'assets/chanh6.png',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: 'QL21A, Thạch Hoà, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0982843178',
      imageUrl: 'assets/phoc1.jpeg',
      restaurantName: 'Phở Cồ Thuỷ Cường',
      searchKeyWord: 'pho bo',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 15,
      distanceFromUniversity: 3,
      ratingStar: 4.1,
      totalAmountOfRatings: 7,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/phoc1.jpeg',
        'assets/phoc2.jpeg',
        'assets/phoc3.jpeg',
        'assets/phoc4.jpeg',
        'assets/phoc5.jpeg',
        'assets/phoc6.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: 'QL21A, Thạch Hoà, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0945403868',
      imageUrl: 'assets/mi1.jpeg',
      restaurantName: 'Mì Cay Hola',
      searchKeyWord: 'mi cay',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 5,
      distanceFromUniversity: 1,
      ratingStar: 4.8,
      totalAmountOfRatings: 14,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/mi2.jpeg',
        'assets/m3.jpeg',
        'assets/m4.jpeg',
        'assets/m7.png',
        'assets/m8.png',
        'assets/mi5.jpeg',
        'assets/mi6.png',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
    RestaurantObject(
      restaurantAddress: 'Thôn 8, Thạch Thất, Hà Nội, Việt Nam',
      phoneNumber: '0867002014',
      imageUrl: 'assets/piz.jpeg',
      restaurantName: 'Pizza 91',
      searchKeyWord: 'pizza',
      ownerName: 'Nguyễn Văn F',
      avatarUrl: 'assets/avatar6.jpg',
      waitingTime: 9,
      distanceFromUniversity: 1.1,
      ratingStar: 4.5,
      totalAmountOfRatings: 29,
      restaurantType: 'Noodle & Congee',
      imageSlide: <String>[
        'assets/piz1.png',
        'assets/piz2.jpeg',
        'assets/piz3.jpeg',
        'assets/piz4.jpeg',
        'assets/piz5.jpeg',
        'assets/piz6.png',
        'assets/piz7.jpeg',
        'assets/piz8.jpeg',
      ],
      commentObjectList: <CommentObject>[
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
        CommentObject(
          profileAvatar: 'assets/avatar1.jpeg',
          commentCaption: 'Đồ ăn của quán rất ngon và đảm bảo vệ sinh',
        ),
      ],
    ),
  ];

  final List<Widget> _widgetOption = <Widget>[
    FoodSlide(
      restaurantObject: restaurantImage,
    ),
    SearchPage(
      restaurantObjectList: restaurantImage,
    ),
    NewFeedPage(),
    PersonalProfile(
      restaurantObject: restaurantImage,
    ),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Padding(
      //     padding: EdgeInsets.only(left: 5),
      //     child: Text(
      //       'FUFood',
      //       style: TextStyle(fontSize: 30, color: Colors.black),
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          // const BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.chat_bubble_outline_sharp,
          //     color: Color(0xff000000),
          //   ),
          //   label: '',
          // ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xff000000),
            ),
            label: '',
          ),

          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xff000000),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/globe.png',
              height: 20,
              width: 20,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xff000000),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap, // this will be set when a new tab is tapped
      ),
    );
  }
}
