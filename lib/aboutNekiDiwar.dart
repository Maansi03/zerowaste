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

  final List<String> imagesList = [
    'assets/nekidiwar.jpeg',
    'assets/nekikideewar3.jpeg',
    'assets/nekikideewar2.jpeg',
    // 'https://thumbs.dreamstime.com/b/landscape-grass-field-green-environment-public-park-use-as-natural-background-backdrop-78426893.jpg',
    // 'https://image.shutterstock.com/image-illustration/green-screen-looping-animated-background-260nw-1702327750.jpg',

    // 'https://drive.google.com/uc?export=view&id=1WkSGq2ZmWDmS9U-SaxrwV5-nys3gfEeT',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          //padding: EdgeInsets.only(top: statusbarHeight),

          child: Center(
            child: Text(
              "Zero Waste",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
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
              Colors.green.withOpacity(.6),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: Column(
            children: <Widget>[
              //height: MediaQuery.of(context).size.height * 0.3,
              //width: double.infinity,
              Card(
                elevation: 20,
                child: CarouselSlider(
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
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(2),
                            color: Colors.orange,
                            // decoration:
                            //     BoxDecoration(borderRadius: BorderRadius.circular(100)),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'Neki Ki Deewar',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ReadMoreText(
                  'ईदिशा और जिला प्रशासन कुरुक्षेत्र द्वारा लगभग पांच वर्षों से गरीब और जरूरतमंद लोगों की भलाई के लिए नेकी की दीवार की शानदार पहल की गई जो आज भी सभी लोगों के सफल प्रयास से चल रही है।ये नेकी की दीवार सरकारी एस डी एम ऑफिस के साथ है।इस नेकी की दीवार के लिए आप सब अपने अपने घरों से जो चीजें बेकार समझ कर फेंक देते हो या उन्हें बेच देते हो।आप सब ऐसा करने के बजाय उन सब चीजों को जैसे कपड़ा (लेडीज या जेन्ट्स),जूते,चप्पल,बच्चों के खिलौने दान स्वरूप इस नेकी की दीवार पर किसी भी समय लगा सकते हैं और पुण्य के भागी बन सकते हैं।',
                  trimLines: 2,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'ND1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'ND2.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'ND3.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'ND4.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'nekikideewar3.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'nekiDiwar.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: launchURL,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
                child: Text('Youtube Video'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Text('Want to donate ?'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
                //style: ButtonStyle(

                // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //     RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         side: BorderSide(color: Colors.green)))),
                //   shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                //       borderRadius: BorderRadius.circular(Radius.circular(10))),
                // ),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => NekiDiwar()));
                },
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
