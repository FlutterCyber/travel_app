import 'package:flutter/material.dart';

class IntoPage extends StatelessWidget {
  const IntoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: _height,
            width: _width,
            image: const AssetImage(
              "assets/images/mountain.jpg",
            ),
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 50),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Center(
                  child: Text(
                    "Aspen",
                    style: TextStyle(
                        fontSize: 90, fontFamily: "snow", color: Colors.white),
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  "Plan your",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "madchen",
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Luxurious\nVacation",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "madchen",
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(Size(_width, 50.0)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius here
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
