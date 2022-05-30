import 'package:flutter/material.dart';

class NeumorphismScreen extends StatelessWidget {
  const NeumorphismScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu, size: 32,),
                  Text('Playlist', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),),
                  Icon(Icons.more_horiz, size: 32,),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.66,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('https://ipurple.eu/1013-large_default/twice-more-more.jpg', fit: BoxFit.cover),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.01,),
                          Text('More & More', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          Text('JYP Entertainment', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Icon(Icons.favorite_border_outlined, color: Colors.red, size: 34,),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('3:11'),
                      Icon(Icons.crop),
                      Icon(Icons.repeat),
                      Text('4:22'),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.02,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 5,
                        child: Container(
                          height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.01,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.arrow_back_ios, size: 32),
                  Icon(Icons.pause, size: 32),
                  Icon(Icons.arrow_forward_ios, size: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
