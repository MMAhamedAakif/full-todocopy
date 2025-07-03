import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Selecttask extends StatelessWidget {
  const Selecttask({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.work, color: Colors.blue[800]),
                    ),

                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Task Group",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Work",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Group",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Work",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "This application is designed for super shops. By using this applicatio they can enlist all their products in one place and can deliver. Customers will get a one-stop solution for their daily shopping.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white54,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.deepPurple[800],
                      ),
                    ),

                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Start Date",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "01 May, 2022",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded, size: 45),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.deepPurple[800],
                      ),
                    ),

                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "End Date",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "30 June, 2022",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded, size: 42),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[100],
                  ),
                  child:
                      Text(
                            "Change Logo",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[800],
                            ),
                          )
                          .animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                fixedSize: Size(500, 50),

                elevation: 0,
                shadowColor: Colors.black,
                backgroundColor: Colors.blue[800],
              ),
              child:
                  Text(
                        "Add Project",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                      .animate()
                      .fadeIn(duration: 600.ms)
                      .then(delay: 200.ms) // baseline=800ms
                      .slide(),
            ),
          ],
        ),
      ],
    );
  }
}
