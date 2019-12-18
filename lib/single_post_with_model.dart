import 'package:flutter/material.dart';
import 'package:learn_flex/model/Post.dart';
import 'package:learn_flex/api/Services.dart';

class SinglePost extends StatefulWidget {
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  Future<Post> post;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Services.fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo navigation fect an object api',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: IconButton(
            icon: Icon(Icons.arrow_back),
          ),
        ),
        appBar: AppBar(
          title: Text('Flutter demo navigation fect an object api'),
        ),
        body: Center(
          // child: Text('second page'),
          child: FutureBuilder(
            future: post,
            builder: (BuildContext context, snapshot) {
              print(post);
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
