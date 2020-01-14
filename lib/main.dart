import 'package:flutter/material.dart';
import 'model/moviedb.dart';
import 'package:learn_flex/api/service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('example'),
      ),
      body: FutureBuilder(
        future: MovieRepository().getNowPlaying(1),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return new MovieList(playing: snapshot.data);
          }
        },
      ),
    );
  }
}

class MovieList extends StatefulWidget {
  final Moviedb playing;
  MovieList({this.playing, Key key}) : super(key: key);
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  ScrollController scrollController = new ScrollController();
  List<Result> movie;
  int currentPage = 1;

  bool onNotificationHandler(ScrollNotification notification) {
    if (notification is ScrollUpdateNotification) {
      if (scrollController.position.maxScrollExtent > scrollController.offset &&
          scrollController.position.maxScrollExtent - scrollController.offset <=
              50) {
        print('End Scroll');
        MovieRepository().getNowPlaying(currentPage + 1).then((val) {
          currentPage = val.page;
          setState(() {
            movie.addAll(val.results);
          });
        });
      }
    }
    return true;
  }

  @override
  void initState() {
    movie = widget.playing.results;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: onNotificationHandler,
      child: ListView.builder(
        itemCount: movie.length,
        controller: scrollController,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text(movie[index].title),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
