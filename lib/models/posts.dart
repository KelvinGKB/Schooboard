import 'package:schooboard/models/users_model.dart';


class Posts {
  String imageUrl;
  String post_id;
  String post_time;
  String title;
  String description;
  List<Users> users;

  Posts({
    this.imageUrl,
    this.post_id,
    this.post_time,
    this.title,
    this.description,
    this.users,
  });
}


List<Users> users =[

  Users(
    imageUrl: 'assets/images/profile_image/austin.jpg',
    name: 'Austin',
    uid: 'u0001',
  ),

  Users(
    imageUrl: 'assets/images/profile_image/candy.jpg',
    name: 'Candy',
    uid: 'u0002',
  ),

  Users(
    imageUrl: 'assets/images/profile_image/3.jpg',
    name: 'Garin_09',
    uid: 'u0003',
  ),

  Users(
    imageUrl: 'assets/images/profile_image/harris.jpg',
    name: 'Harris',
    uid: 'u0004',
  ),

  Users(
    imageUrl: 'assets/images/profile_image/paul.jpg',
    name: 'Paul',
    uid: 'u0005',
  ),

  Users(
    imageUrl: 'uncle_lim.jpg',
    name: 'Uncle_Lim',
    uid: 'u0006',
  ),
];


      List<Posts> posts =[

        Posts(
      imageUrl:'assets/images/profile_image/garin.jpg',
      post_id:"pid001",
      post_time:"08:33",
      title:"This is my First post in the Forum System. This is my First post in the Forum System.",
      description:"Hi, i come from RIT2 G4 ",
      users:users,
      ),

      Posts(
      imageUrl:"assets/images/background_image/4.jpg",
      post_id:"pid002",
      post_time:"08:33",
      title:"This is my First post in the Forum System.",
      description:"Hi, i come from RIT2 G4 hahahahahahahahahahahahahaha",
      users:users,
      ),

      Posts(
      imageUrl:"assets/images/background_image/2.jpg",
      post_id:"pid003",
      post_time:"08:33",
      title:"This is my First post in the Forum System.",
      description:"Hi, i come from RIT2 G4 ",
      users :users,
      ),

      Posts(
      imageUrl:"",
      post_id:"pid005",
      post_time:"08:33",
      title:"This is my First post in the Forum System.",
      description:"Hi, i come from RIT2 G4 ",
      users:users,
      ),
];