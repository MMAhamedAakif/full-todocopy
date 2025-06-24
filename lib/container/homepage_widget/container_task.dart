import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: camel_case_types
class view_task extends StatelessWidget {
  const view_task({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF7B61FF),
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
                Text(
                  "Your today's task \n almost done!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "View Task",
                    style: TextStyle(color: Color(0xFF7B61FF)),
                  ),
                ),
              ],
            ),
            Spacer(),

            //*new widget
            CircularPercentIndicator(
              radius: 30.0,
              animation: true,
              animationDuration: 1200,

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
                IconButton(
                  focusColor: Colors.white,
                  hoverColor: Colors.blue[900],
                  highlightColor: Colors.white60,
                  splashColor: Colors.white,
                  disabledColor: Colors.blueAccent,

                  onPressed: () {},
                  icon: Icon(Icons.more_horiz, color: Colors.white),
                ),

                SizedBox(height: 8.0),

                IconButton(
                  focusColor: Colors.white,
                  hoverColor: const Color.fromARGB(255, 13, 92, 156),
                  highlightColor: Colors.white24,
                  splashColor: const Color.fromARGB(255, 167, 56, 56),
                  disabledColor: Colors.green,

                  onPressed: () {},
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
