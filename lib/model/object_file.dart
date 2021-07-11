class RestaurantObject {
  RestaurantObject({
    this.ratingStar,
    this.waitingTime,
    this.distanceFromUniversity,
    this.totalAmountOfRatings,
    this.restaurantType,
    this.avatarUrl,
    this.restaurantName,
    this.ownerName,
    this.phoneNumber,
    this.restaurantAddress,
    this.imageUrl,
    this.imageSlide,
    this.keyWord,
    this.commentObjectList,
    this.searchKeyWord,
  });

  final String imageUrl;
  final String restaurantName;
  final String ownerName;
  final String phoneNumber;
  final String restaurantAddress;
  final String avatarUrl;
  final double ratingStar;
  final int waitingTime;
  final double distanceFromUniversity;
  final int totalAmountOfRatings;
  final String restaurantType;
  final List<String> imageSlide;
  final String keyWord;
  final List<CommentObject> commentObjectList;
  final String searchKeyWord;

}

class FeedPost {
  FeedPost({
    this.postCaption,
    this.imageUrl,
    this.keyWord,
    this.profileName,
    this.profileAvatar,
    this.numberOfLikes,
    this.comments,
  });

  final String imageUrl;
  final String keyWord;
  final String postCaption;
  final String profileName;
  final String profileAvatar;
  final String numberOfLikes;
  final List<String> comments;

}

class CommentObject {
  CommentObject({this.profileAvatar, this.commentCaption});

  final String profileAvatar;
  final String commentCaption;
}
