import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'NekiDiwar.dart';
import 'homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutNekiDiwar extends StatefulWidget {
  @override
  State<AboutNekiDiwar> createState() => _AboutNekiDiwarState();
}

class _AboutNekiDiwarState extends State<AboutNekiDiwar> {
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://www.youtube.com/watch?v=GoMt8eJ98kE');
  }

  launchGallery() {
    // ignore: deprecated_member_use
    launch('https://kurukshetra.gov.in/gallery/neki-ki-deewar/');
  }

  final List<String> imagesList = [
    'assets/nekidiwar.jpeg',
    'assets/nekikideewar3.jpeg',
    'assets/nekikideewar2.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Container(
          //padding: EdgeInsets.only(top: statusbarHeight),

          child: Center(
            child: Text(
              "Neki Ki Deewar",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 114, 213, 117).withOpacity(.1),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: Column(
            children: <Widget>[
              //height: MediaQuery.of(context).size.height * 0.3,
              //width: double.infinity,
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  viewportFraction: 1,
                  aspectRatio: 16 / 2,
                  enableInfiniteScroll: true,
                ),
                items: imagesList
                    .map(
                      (item) => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(2),
                            color: Colors.orange,
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Neki Ki Deewar',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ReadMoreText(
                  'Neki Ki Deewar (Wall Of Goodness) For the betterment of the poor and needy people for almost last five years by E-disha and District Administration Kurukshetra, a great initiative of the wall of goodness was taken which is going on even today with the successful efforts of all the people. This wall of goodness is near the government SDM office. Many of you throw away or sell the things which you consider useless. Clothes (ladies or gents), shoes, slippers, childrens toyscan be put on the wall of this goodness at any time as a donation and you can become a partaker of virtue. ',
                  trimLines: 2,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  ElevatedButton(
                    onPressed: launchURL,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: Text('Youtube Video'),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  ElevatedButton(
                    onPressed: launchGallery,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: Text('Media Gallery'),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  ElevatedButton(
                    child: Text('Want To Donate  ?'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NekiDiwar()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        },
      ),
    );
  }
}
