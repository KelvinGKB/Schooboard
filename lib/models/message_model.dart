//import 'package:flutter_chat_ui/models/user_model.dart';
import 'users_model.dart';

class Message {
  final Users sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final Users currentUser = Users(
  uid: "0",
  name: 'Current User',
  imageUrl: 'assets/images/profile_image/austin.jpg',
);

// USERS
final Users greg = Users(
  uid: "1",
  name: 'Austin',
  imageUrl: 'assets/images/profile_image/austin.jpg',
);
final Users james = Users(
  uid: "2",
  name: 'Chiater_05',
  imageUrl: 'assets/images/profile_image/garin.jpg',
);
final Users john = Users(
  uid: "3",
  name: 'Jiajin_0516',
  imageUrl: 'assets/images/profile_image/harris.jpg',
);
final Users olivia = Users(
  uid: "4",
  name: 'Jentat17',
  imageUrl: 'assets/images/profile_image/Kings.jpg',
);
final Users sam = Users(
  uid: "5",
  name: 'Jimmy_Ong',
  imageUrl: 'assets/images/profile_image/paul.jpg',
);
final Users sophia = Users(
  uid: "7",
  name: 'Michael007',
  imageUrl: 'assets/images/profile_image/uncle_lim.jpg',
);
final Users steven = Users(
  uid: "8",
  name: 'Chilog',
  imageUrl: 'assets/images/profile_image/shawn.jpg',
);

// FAVORITE CONTACTS
List<Users> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'submit your DSA class diagram',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'hahaha,damn it',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'are you serious !?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'please join the meet now',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Sibeh kiasiap lah you',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Want to eat at YumYum anot ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: currentUser,
    time: '9:01 PM',
    text: 'OMG !! I forgot to do liao !! 要死咯',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '8:45 PM',
    text: 'Btw, remember to submit the COA FlowChart diagram',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:15 PM',
    text: 'Give me 1 more hour, please !',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'OMG !! I forgot to do liao !! 要死咯',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'Btw, remember to submit the COA FlowChart diagram',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'okok',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Give me 1 more hour, please !',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'Eh, have you done your OOAD assignment ?',
    isLiked: false,
    unread: true,
  ),
];
