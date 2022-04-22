import 'package:flutter/material.dart';
import 'package:json_film/movie_class.dart';
import 'package:json_film/theme_app/theme_combined.dart';
import '../../movie_json.dart';
import '../../array_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  String url = "https://image.tmdb.org/t/p/original";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme(),
        home: Scaffold(
          appBar: _buildAppBar(),
            body: FutureBuilder<ResultArray>(
                future: getMovie(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.movies().length,
                          itemBuilder: (context, index) {

                            Movie movie = snapshot.data!.movies()[index];


                            return Card(
                                  //shadowColor: Colors.black12,
                                  margin: const EdgeInsets.all(8),
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(width: 4.0),
                                  ),
                                  elevation: 2,
                                  //color: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:  [
                                      Expanded(
                                        flex: 1,
                                        child: Image.network(
                                        url + movie.getPath(),
                                    ),
                                      ),
                                     Expanded(
                                       flex: 3,
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(movie.getTitle(),
                                          textAlign: TextAlign.center,),
                                        
                                          Text(movie.getVote().toString(),),
                                       
                                        ],
                                    ),
                                     ),
                                  ]),
                            );
                          },
                        );
                      }
                      return const Center(child: const Text('ERROR'));
                    case ConnectionState.none:
                      break;
                    case ConnectionState.active:
                      break;
                    case ConnectionState.waiting:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                  }

                  return const Center(child: const Text('ERROR'));
                })));
  }
}

AppBar _buildAppBar() => AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          // open drawer
        },
        icon: const Icon(Icons.menu_rounded),
      ),
      title: const Text(
        'Film',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
      ),
      centerTitle: true,
    );
