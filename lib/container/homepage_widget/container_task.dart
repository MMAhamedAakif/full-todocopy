import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:todocopy/pages/AddingPage.dart';

// ignore: camel_case_types
class view_task extends StatelessWidget {
  const view_task({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: Color(0xFF7B61FF),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 225, 13, 158),
            const Color.fromARGB(255, 30, 11, 245),
            const Color.fromARGB(255, 8, 211, 234),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      width: double.infinity,
      height: 125,
      // color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlurText(
                  text: "Your today's task ",
                  duration: const Duration(milliseconds: 1250),
                  type: AnimationType.word,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                BlurText(
                  text: " almost done!",
                  duration: const Duration(milliseconds: 1750),
                  type: AnimationType.word,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => addingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child:
                      Text(
                            "View Task",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                          .animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                ),
              ],
            ),
            Spacer(),

            //*new widget
            CircularPercentIndicator(
              radius: 30.0,
              animation: true,
              animationDuration: 2000,

              lineWidth: 8.0,
              percent: 0.85,
              header: Text(
                "Icon header",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white,
              center: Text(
                "85%",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              footer: Text(
                "Almost done",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              progressColor: const Color.fromARGB(255, 80, 229, 88),
              // progressBorderColor: Colors.white,
            ),

            SizedBox(width: 10.0),

            Column(
              children: [
                SizedBox(height: 30.0),

                IconButton(
                  focusColor: Colors.white,
                  hoverColor: const Color.fromARGB(255, 13, 92, 156),
                  highlightColor: Colors.white24,
                  splashColor: const Color.fromARGB(255, 167, 56, 56),
                  disabledColor: Colors.green,

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => addingPage()),
                    );
                  },
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
