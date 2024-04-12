import 'package:flutter/material.dart';

class CustumAppBar extends StatelessWidget {
  //const CustumAppBar({super.key});
  final int? coinsData;
  const CustumAppBar({required this.coinsData});

  @override
  Size get preferredSize => AppBar().preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(""),
      actions: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 10,
                  child: const Image(
                    image: AssetImage("assets/images/icon-coin.png"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(coinsData.toString()!),
                ),
              ],
            )),
      ],
    );
  }
}
