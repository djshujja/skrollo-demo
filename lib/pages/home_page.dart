import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/posts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
          child: Column(
          children: List.generate(posts.length, (index) {
        return PostItem(
          postImg: posts[index]['postImg'],
          title: posts[index]['title'],
        );
      })),
    );
  }
}

class PostItem extends StatelessWidget {
  final String title;
  final String postImg;

  const PostItem({
    Key key,
    this.title,
    this.postImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://img.favpng.com/1/2/24/reddit-logo-youtube-png-favpng-Rukc5hsDFfci1sNk1LkFBccvW.jpg'), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Icon(Icons.share, color: Colors.white,),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    postImg,
                  ),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 12,
        ),
        // Row(
        //   children: <Widget>[
        //     Icon(
        //       Icons.play_circle_fill,
        //       color: Colors.black,
        //     )
        //   ],
        // )
      ],
    );
  }
}
