import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZERO WASTE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(.6),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset('zero.jpg'),
                const SizedBox(
                  height: 20,
                ),
                const ReadMoreText(
                  //margin: EdgeInsets.all(20),
                  '__Our Mission__ \n\n \n Our misson is to resolve nations enormous waste problem by implementing 6Rs(Rethink, Repair, Refuse, Reduce , Reuse, Recycle) of waste management so as to decrease the environmental effect of plastic products used. \n Rapid population growth, urbanization and industrial growth have led to severe waste mangagement problems around the world. The growth in the usage of plastics is a major contributor of environmental degradation today. So, keeping this in mind we took a step to effectively deal with issues ofplastic waste management to enable us to achieve sustainable development and make our mission a success. \n We together can work for the benefit of country. With teamwork and co-operation, we can conquer this global issue of increasing volumes of precarious waste. When our voice and our actions are united, we create a movement that is inclusive, impactful, and impossible to ignore. So, join us today and indulge in a process to make world a better place for everyone',
                  trimLines: 2,

                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
