import 'package:flutter/material.dart';
import 'package:ui_movies/screen/bottom.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xff1E1E1E),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 24, right: 34),
                child: Text(
                  'What do you want to watch?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff67686D),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                  ),
                ),
              ),
              //movies
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.only(left: 24, right: 24, top: 20),

                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ScrollListMovie('assets/images/movie1.png'),
                      ScrollListMovie('assets/images/movie1.png'),
                      ScrollListMovie('assets/images/movie1.png'),
                      ScrollListMovie('assets/images/movie1.png'),
                      ScrollListMovie('assets/images/movie1.png'),
                      ScrollListMovie('assets/images/movie1.png'),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.only(left: 24, right: 24, top: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      listTag('Now playing'),
                      listTag('Upcoming'),
                      listTag('Top rated'),
                      listTag('Popular'),
                      listTag('Now playing'),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 255,
                margin: EdgeInsets.only(left: 24, right: 24, top: 10),
                // decoration: BoxDecoration(
                //   border: Border.all(width: 1),
                //   borderRadius: BorderRadius.circular(8),
                // ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ListMove('assets/images/movie6.png'),
                          ListMove('assets/images/movie7.png'),
                          ListMove('assets/images/movie8.png'),
                        ],
                      ),
                      Row(
                        children: [
                          ListMove('assets/images/movie9.png'),
                          ListMove('assets/images/movie10.png'),
                          ListMove('assets/images/movie11.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Color(0xff1E1E1E),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(

              Icons.search,
              color: Color(0xff67686D),
            ),
            label: 'Search',
            backgroundColor: Color(0xff67686D),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark,color: Color(0xff67686D),),
            label: 'Watch list',
          ),
        ],
      ),
    );
  }
}

class ListMove extends StatelessWidget {
  String img;

  ListMove(this.img);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class listTag extends StatelessWidget {
  String text;

  listTag(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 33,
      margin: EdgeInsets.only(bottom: 7),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}

class ScrollListMovie extends StatelessWidget {
  String image;

  ScrollListMovie(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      // padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
