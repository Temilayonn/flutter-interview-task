import 'package:flutter/material.dart';
import 'package:laundro/models/chat_model.dart';
import 'package:laundro/models/data.dart';
import 'package:laundro/models/story_model.dart';
import 'package:laundro/screens/chats/chat.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = new TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<StoryModel> stories = [];
  List<ChatModel> chats = [];
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();

    stories = getStories();
    chats = getChats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        currentIndex: _currentTab,
        onTap: (int val) {
          setState(() {
            _currentTab = val;
          });
        },
        unselectedItemColor: Color(0xffB0B0B0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 30,
            ),
            label: "Moments",
          ),
          // ignore: prefer_const_constructors
          chatIcon(),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      backgroundColor: Color(0xff171719),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(30),
                    //   topRight: Radius.circular(30),
                    // ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Chat",
                              style: TextStyle(
                                  color: Color(0xff2B2B2B),
                                  fontSize: 34,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildSearch(
                        'Search',
                        (val) {
                          // searchValues.add(val);
                        },
                        searchController,
                      ),
                      ListView.builder(
                          itemCount: chats.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ChatTile(
                              imgUrl: chats[index].imgUrl,
                              name: chats[index].name,
                              lastMessage: chats[index].lastMessage,
                              haveunreadmessages:
                                  chats[index].haveunreadmessages,
                              unreadmessages: chats[index].unreadmessages,
                              lastSeenTime: chats[index].lastSeenTime,
                            );
                          }),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem chatIcon() {
    return BottomNavigationBarItem(
      icon: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            CustomPageRoute(
              child: ChatScreen(),
              direction: AxisDirection.left,
            ),
          );
        },
        child: RotatedBox(
          quarterTurns: 290,
          child: Icon(Icons.send),
        ),
      ),
      label: "Chat",
    );
  }
}

class StoryTile extends StatelessWidget {
  final String imgUrl;
  final String username;
  StoryTile({required this.imgUrl, required this.username});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              imgUrl,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            username,
            style: TextStyle(
                color: Color(0xff78778a),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String lastMessage;
  final bool haveunreadmessages;
  final int unreadmessages;
  final String lastSeenTime;
  ChatTile(
      {required this.unreadmessages,
      required this.haveunreadmessages,
      required this.lastSeenTime,
      required this.lastMessage,
      required this.imgUrl,
      required this.name});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 36),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.network(
                imgUrl,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    lastMessage,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(lastSeenTime),
                  SizedBox(
                    height: 16,
                  ),
                  haveunreadmessages
                      ? Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color(0xffff410f),
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "$unreadmessages",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ))
                      : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
