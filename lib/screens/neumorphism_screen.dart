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
            SizedBox(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.menu, size: 32,),
                  Text('Playlist', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400, letterSpacing: 1.5, color: Colors.black54),),
                  Icon(Icons.more_horiz, size: 32,),
                ],
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.66,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('https://ipurple.eu/1013-large_default/twice-more-more.jpg', fit: BoxFit.cover, height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.56),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.01,),
                          const Text('More & More', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          const Text('JYP Entertainment', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black54,),),
                        ],
                      ),
                      const Icon(Icons.favorite_border_outlined, color: Colors.red, size: 34,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('2:11'),
                      Icon(Icons.crop, color: Colors.black54,),
                      Icon(Icons.repeat, color: Colors.black54,),
                      Text('4:01'),
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
            SizedBox(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.arrow_back_ios, color: Colors.black54,size: 32),
                  Icon(Icons.pause, color: Colors.black54, size: 32),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
