import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class statistics extends StatelessWidget {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('1.jpg'),
                const SizedBox(
                  height: 20,
                ),
                const ReadMoreText(
                  //margin: EdgeInsets.all(20),
                  '_Plastic Waste Data from Kurukshetra_\n\nA total of 110  items were collected\nMLPs constituted the highest amount of waste at 25%\nThis was followed by polythene bags (LDPE) at 22%\nHDPE constituted 18% \nTetrapacks and synthetic fibers made up 10.7% and 7.1% of the waste respectively\n_Plastic waste in India__\n\nAccording to the Central Pollution Control Board (CPCB), India generates close to 26,000 tonnes of plastic a day, and over 10,000 tonnes a day of plastic waste remains uncollected.\nAccording to a Federation of Indian Chambers of Commerce and Industry (FICCI) study the plastic processing industry is estimated to grow to 22 million tonnes (MT) a year by 2020 from 13.4 MT in 2015 and nearly half of this is single-use plastic.\nThough India’s per capita plastic consumption is less than 11 kg, (nearly a tenth of the United States of America 109 kg), the country’s plastic consumption will only grow larger in the future.',
                  trimLines: 2,

                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 900,
                )
              ],
            ),
          ),
        )));
  }
}
