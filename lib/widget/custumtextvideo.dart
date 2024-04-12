import 'package:flutter/material.dart';

class CustumAppPhone extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String imageUrl;
  CustumAppPhone(
      {required this.text1,
      required this.text2,
      required this.text3,
      required this.imageUrl});

  @override
  State<CustumAppPhone> createState() => _CustumAppPhoneState();
}

class _CustumAppPhoneState extends State<CustumAppPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                widget.imageUrl,
                width: 100,
                height: 100,
              )),
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align text to the start (left) of the column
              children: [
                Text(
                  widget.text1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 2,
                ), // Access widget properties using widget.text1
                Text(
                  widget.text2,
                  style: const TextStyle(
                    color: Colors.black87,
                  ),
                ), // Access widget properties using widget.text2
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Icon(Icons.add_a_photo_outlined)),
          Padding(
              padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
              child: Text(widget.text3)),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 1, 5),
            child: Image.(
              "assets/images/icon-coin.png", // Replace 'image.png' with your image asset path
              width: 100, // Adjust width as needed
              height: 100, // Adjust height as needed
            ),
          ),
        ],
      ),
    );
  }
}
