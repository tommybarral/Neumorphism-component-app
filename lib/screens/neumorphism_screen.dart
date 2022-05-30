import 'package:flutter/material.dart';

class NeumorphismScreen extends StatelessWidget {
  NeumorphismScreen({Key? key}) : super(key: key);

  Widget neumorphismContainer(double height, double width, Widget? child) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade500, offset: const Offset(4, 4), blurRadius: 15, spreadRadius: 1),
            const BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 15, spreadRadius: 1),
          ]
      ),
      child: child,
    );
  }
  
  final List<IconData>? _interaction = [
    Icons.arrow_back_ios,
    Icons.pause,
    Icons.arrow_forward_ios,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(15),
                    ),
                      child: const Icon(Icons.menu, size: 32,),
                  ),
                  const Text('Playlist', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400, letterSpacing: 1.5, color: Colors.black54),),
                  const Icon(Icons.more_horiz, size: 32,),
                ],
              ),
            ),
            neumorphismContainer(
            (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.64,
            MediaQuery.of(context).size.width * 0.9,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  Center(
                    child: Container(
                      height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.52,
                      width: MediaQuery.of(context).size.width * 0.86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            image: NetworkImage('https://ipurple.eu/1013-large_default/twice-more-more.jpg'),
                            fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
                    child: Row(
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
                      neumorphismContainer(
                          (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.02,
                          MediaQuery.of(context).size.width * 0.7, null),
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
              height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  neumorphismContainer(70, 70, Icon(_interaction![0], color: Colors.black54,size: 32),),
                  neumorphismContainer(70, 70, Icon(_interaction![1], color: Colors.black54, size: 32),),
                  neumorphismContainer(70, 70, Icon(_interaction![2], color: Colors.black54, size: 32),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
