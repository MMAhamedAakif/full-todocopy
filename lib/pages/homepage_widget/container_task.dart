import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(14.0),
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
      ),
    );
  }
}
