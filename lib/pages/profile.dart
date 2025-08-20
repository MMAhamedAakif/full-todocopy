import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(
          child: Text("Profile  ", style: (TextStyle(color: Colors.white))),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        autofocus: true,
        elevation: 10,
        splashColor: Colors.transparent,
        tooltip: "Edit",

        onPressed: () {},
        child: Icon(Icons.edit, color: Colors.white),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: [
                  // Profile Picture
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.connect_without_contact,
                              color: Colors.pink,
                            ),
                            Text(
                              "Connect",
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),

                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message, color: Colors.deepOrangeAccent),
                            Text(
                              "Message",
                              style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), // Replace with your image

                  SizedBox(height: 20),

                  // Name and Location
                  const Text(
                    "Samantha Jones",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "New York, United States",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 15),

                  // Job & Education
                  const Text(
                    "Web Producer - Web Specialist",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    "Columbia University - New York",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 20),

                  // Stats
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Column(
                        children: [
                          Text(
                            "65",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("Tasks"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "43",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("Finish Task"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "21",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("Comments"),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Show More Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Show more",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
