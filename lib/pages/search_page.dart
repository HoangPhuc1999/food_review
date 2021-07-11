import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodreview_app/base/route.dart';
import 'package:foodreview_app/model/object_file.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key, this.restaurantObjectList}) : super(key: key);

  final List<RestaurantObject> restaurantObjectList;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  FocusNode unFocus = FocusNode();
  TextEditingController searchController = TextEditingController();

  List<RestaurantObject> defaultList;

  @override
  void initState() {
    defaultList = widget.restaurantObjectList;

    searchController.addListener(() {
      defaultList =
          _searchResult(searchController.text, widget.restaurantObjectList);
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                height: 30,
              ),
              const Text(
                'Search',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(
                height: 20,
              ),
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              const Text(
                'All Result',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(
                height: 20,
              ),
              restaurantResult(context, defaultList),
            ],
          ),
        ),
      ),
    );
  }

  Widget restaurantResult(
      BuildContext context, List<RestaurantObject> restaurantObject) {
    if (restaurantObject.isNotEmpty) {
      return Container(
        height: (restaurantObject.length / 4).roundToDouble() * 200,
        child: GridView.builder(
            physics: const ScrollPhysics(),
            itemCount: restaurantObject.length ?? 1,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.restaurantDetailPage,
                      arguments: <String, dynamic>{
                        'restaurantObject': restaurantObject[index],
                      });
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(restaurantObject[index].imageUrl),
                    fit: BoxFit.cover,
                  )),
                ),
              );
            }),
      );
    } else {
      return Container(
        child: const Text('Không có nhà hàng nào khớp với từ khoá tìm kiếm'),
      );
    }
  }

  List<RestaurantObject> _searchResult(
      String keyWord, List<RestaurantObject> resObject) {
    final List<RestaurantObject> restaurantObject =
        resObject.where((RestaurantObject element) {
      if (element.searchKeyWord.contains(keyWord)) {
        return true;
      }
      return false;
    }).toList();
    return restaurantObject;
  }
}
