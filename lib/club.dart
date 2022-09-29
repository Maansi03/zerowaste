import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';

import 'homepage.dart';

class Club extends StatefulWidget {
  const Club({super.key});

  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://www.youtube.com/watch?v=u5qqfDXXJvM');
  }

  launchFacebook() {
    // ignore: deprecated_member_use
    launch(
        'https://m.facebook.com/story.php?story_fbid=2350715865053792&id=100003462033545');
  }

  launchDrive() {
    // ignore: deprecated_member_use
    launch('https://forms.gle/dcn6sjBF4m82GWwR9');
  }

  final List<String> imagesList = [
    'assets/Club4.jpeg',
    'assets/Club2.jpeg',
    'assets/Club3.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.green),
          backgroundColor: Colors.white,
          title: Container(
            //padding: EdgeInsets.only(top: statusbarHeight),

            child: Center(
              child: Text(
                "Club",
                style: TextStyle(
                    fontSize: 20,
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 114, 213, 117).withOpacity(.1),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                              // decoration:
                              //     BoxDecoration(borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Club',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: const ReadMoreText(
                      'The conservation of all resources by means of responsible production, consumption, reuse and recovery of all products, packaging, and materials, without burning them and without discharges to land, water or air that threaten the environment or human health.you can replace your plastic water bottles with reusable ones. Get rid of your paper towels and replace them with reusable cloths. Ditch single-use items and go for options you can reuse. Take a tote bag to the mall instead of using the plastic one. Compost all kitchen food scraps and so on. Are there any local stores or restaurants that majorly use plastic utensils and plastic bags? You can reach out to these companies and politely address their plastic use.\n Plastic waste contributes massively to greenhouse gases. It could also creep into our waterways and lands, poisoning sea animals and affecting human health. You can draft a letter and send them to local companies explaining the dangers of plastic use. Another way to spread awareness and get people involved is to organize zero waste meetups in your locality.\n Start by creating some buzz around the zero-waste program. You can use social media platforms like Facebook groups to build an online community of people interested in zero wasteZero waste can help create jobs and boost the Economy. ',
                      trimLines: 2,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: launchURL,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        child: Row(
                          children: const [
                            Text('Youtube Video'),
                          ],
                        )),
                    SizedBox(
                      width: 6,
                    ),
                    ElevatedButton(
                        onPressed: launchFacebook,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            //const Icon(Icons.facebook_rounded),
                            const Text('Facebook'),
                          ],
                        )),
                    SizedBox(
                      width: 6,
                    ),
                    ElevatedButton(
                      onPressed: launchDrive,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color
                      ),
                      child: Text('Membership'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 900,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
          child: const Icon(Icons.home),
        ));
  }
}
