import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var image = [
    'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=2000',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtcbhtTI21EWQM_erKwE12RSn632I0ntcMjw&usqp=CAU',
    'https://th-thumbnailer.cdn-si-edu.com/8ciAzzKoUyvv-4kt1rLa3mLgwU0=/fit-in/1600x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/04/8e/048ed839-a581-48af-a0ae-fac6fec00948/gettyimages-168346757_web.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgga7giGIUeRP6rptvCFfOC6v2rw_hdmDlBA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKn-X2ZRRr7DWK4gEnkQFFo_NSpS4dxoS-gg&usqp=CAU',
    'https://wallpaperaccess.com/full/1516404.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuMpg48JPM0A3nMxApRXNQBYg0g-yAILPb-Q&usqp=CAU',
    'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2018/10/bluebells,_oxfordshire.jpg?fit=1500%2C1000&ssl=1',
    'https://img.freepik.com/premium-photo/field-with-field-flowers-mountains-background_885092-89.jpg?w=2000',
    'https://mcdn.wallpapersafari.com/medium/1/17/ZMBC10.jpg'
  ];

  List<String> bodyImages = [
    "https://s3images.zee5.com/wp-content/uploads/2023/04/ANI-20230421170846.jpg",
    "https://images.tv9kannada.com/wp-content/uploads/2023/04/Virat-Kohli-2023-04-26T225638.076.jpg",
    "https://gumlet.assettype.com/swarajya%2F2018-12%2Fb2153e8f-7b74-4021-b6a6-ececb0cdbb50%2FGettyImages_518363964.jpg?q=75&auto=format%2Ccompress&w=1200",
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instander",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
                size: 27,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mark_unread_chat_alt_sharp,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      // bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(icon: Icon(Icons.home_outlined))
      // ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                itemBuilder: (context, index) => SizedBox(
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(image[index]),
                    backgroundColor: Colors.black12,
                  ),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemExtent: 90,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjwWl21lFFJBvQl6_i9Y6zCdNUqkPTgdoZUg&usqp=CAU'),
                backgroundColor: Colors.pink,
                radius: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "royal_shaxan18",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Surat, Gujarat",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded),
                ),
              )
            ]),
          ),
          Container(
            color: Colors.white,
            height: 500,
            width: 450,
            child: PageView.builder(
              itemCount: 3,
              pageSnapping: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child:
                      Image.network(bodyImages[index], fit: BoxFit.fitHeight),
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    size: 26,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mode_comment_outlined, size: 26)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_outward_rounded, size: 26)),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.file_download_rounded, size: 26)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border, size: 26)),
            ],
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.cyan,
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: Container(
              child: BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        backgroundColor: Colors.white,
                        icon: Icon(Icons.home_outlined, color: Colors.black),
                        label: 'Home',
                        tooltip: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search, color: Colors.black),
                        label: 'Search',
                        tooltip: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.ondemand_video_outlined,
                            color: Colors.black),
                        label: 'Reels',
                        tooltip: 'Reels'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite, color: Colors.black),
                        label: 'Notifications',
                        tooltip: 'Notifications'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle_rounded,
                            color: Colors.black),
                        label: 'Profile',
                        tooltip: 'Profile'),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.black,
                  onTap: _onItemTapped),
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: CustomScrollView(
// //           slivers: <Widget>[
// //             SliverAppBar(
// //                 actions: <Widget>[
// //                   Icon(
// //                     Icons.person,
// //                     size: 40,
// //                   )
// //                 ],
// //                 title: Text("SliverList Example"),
// //                 leading: Icon(Icons.menu),
// //                 backgroundColor: Colors.green,
// //                 expandedHeight: 100.0,
// //                 floating: true,
// //                 pinned: true),
// //             SliverList(delegate: SliverChildBuilderDelegate(
// //               (context, index) {
// //                 _buildList(20);
// //               },
// //             )),
// //           ],
// //         ), // Place sliver widgets here
// //       ),
// //     );
// //   }
// // }

// // List _buildList(int count) {
// //   List<Widget> listItems = [];
// //   for (int i = 0; i < count; i++) {
// //     listItems.add(new Padding(
// //         padding: new EdgeInsets.all(16.0),
// //         child: new Text('Sliver Item ${i.toString()}',
// //             style: new TextStyle(fontSize: 22.0))));
// //   }
// //   return listItems;
// // }

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: CustomScrollView(
// //       slivers: [
// //         SliverAppBar(
// //           backgroundColor: Colors.green,
// //           title: Text('Sliver AppBar'),
// //         ),
// //         SliverList(
// //           delegate: SliverChildBuilderDelegate(
// //             (BuildContext context, int index) {
// //               return Card(
// //                 elevation: 10,
// //                 margin: EdgeInsets.all(15),
// //                 child: Container(
// //                   color: Colors.orange[100 * (0 % 12 + 1)],
// //                   height: 60,
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     "List Item $index",
// //                     style: TextStyle(fontSize: 30),
// //                   ),
// //                 ),
// //               );
// //             },
// //             childCount: 10,
// //           ),
// //         ),
// //       ],
// //     ));
// //   }
// // }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           floating: false,
//           expandedHeight: 120.0,
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text('SilverGrid AppBar'),
//           ),
//         ),
//         SliverGrid(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) {
//               return Container(
//                 alignment: Alignment.center,
//                 color: Colors.teal[100 * (index % 10)],
//                 child: Text('grid item $index'),
//               );
//             },
//             childCount: 15,
//           ),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 15,
//             crossAxisSpacing: 15,
//             childAspectRatio: 2.0,
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: Container(
//             color: Colors.yellow,
//             padding: const EdgeInsets.all(8.0),
//             child: Text('Grid Header', style: TextStyle(fontSize: 24)),
//           ),
//         ),
//         SliverGrid.count(
//           crossAxisCount: 3,
//           mainAxisSpacing: 10.0,
//           crossAxisSpacing: 10.0,
//           childAspectRatio: 4.0,
//           children: <Widget>[
//             Container(color: Colors.red),
//             Container(color: Colors.green),
//             Container(color: Colors.blue),
//             Container(color: Colors.red),
//             Container(color: Colors.green),
//             Container(color: Colors.blue),
//           ],
//         ),
//         SliverGrid.extent(
//           maxCrossAxisExtent: 200,
//           mainAxisSpacing: 10.0,
//           crossAxisSpacing: 10.0,
//           childAspectRatio: 4.0,
//           children: <Widget>[
//             Container(color: Colors.pink),
//             Container(color: Colors.indigo),
//             Container(color: Colors.orange),
//             Container(color: Colors.pink),
//             Container(color: Colors.indigo),
//             Container(color: Colors.orange),
//             Container(color: Colors.pink),
//           ],
//         ),
//       ],
//     ));
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyWidget(),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   var arrColors = [
//     Colors.red,
//     Colors.amber,
//     Colors.green,
//     Colors.cyan,
//     Colors.grey,
//     Colors.yellow,
//     Colors.brown,
//     Colors.deepPurple,
//     Colors.black,
//   ];

//   var image = [
//     'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=2000',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtcbhtTI21EWQM_erKwE12RSn632I0ntcMjw&usqp=CAU',
//     'https://th-thumbnailer.cdn-si-edu.com/8ciAzzKoUyvv-4kt1rLa3mLgwU0=/fit-in/1600x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/04/8e/048ed839-a581-48af-a0ae-fac6fec00948/gettyimages-168346757_web.jpg',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgga7giGIUeRP6rptvCFfOC6v2rw_hdmDlBA&usqp=CAU',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKn-X2ZRRr7DWK4gEnkQFFo_NSpS4dxoS-gg&usqp=CAU',
//     'https://wallpaperaccess.com/full/1516404.jpg',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuMpg48JPM0A3nMxApRXNQBYg0g-yAILPb-Q&usqp=CAU',
//     'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2018/10/bluebells,_oxfordshire.jpg?fit=1500%2C1000&ssl=1',
//   ];

//   callBack() {
//     print("Button Clicked");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Grid View"), backgroundColor: Colors.cyan),
//         body: Container(
//           margin: EdgeInsets.all(10),
//           height: 500,
//           width: 500,
//           child: Stack(
//             children: [
//               Container(
//                 child: Image.network(
//                     fit: BoxFit.cover,
//                     'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2018/10/bluebells,_oxfordshire.jpg?fit=1500%2C1000&ssl=1'),
//                 height: 300,
//                 width: 300,
//                 color: Colors.amber,
//               ),
//               Positioned(
//                 top: 130,
//                 left: 130,
//                 child: Container(
//                   child: Image.network(
//                       fit: BoxFit.cover,
//                       'https://etimg.etb2bimg.com/photo/82730697.cms'),
//                   height: 250,
//                   width: 250,
//                   color: Colors.red,
//                 ),
//               ),
//               // Container(
//               //   height: 100,
//               //   width: 100,
//               //   color: Colors.green,
//               // ),
//             ],
//           ),
//         )

//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Column(
//         //     children: [
//         // Container(
//         //   width: 600,
//         //   height: 300,
//         //   child: GridView.count(
//         //       //scrollDirection: Axis.horizontal,
//         //       crossAxisCount: 4,
//         //       crossAxisSpacing: 10,
//         //       mainAxisSpacing: 10,
//         //       children: [
//         //         IconButton(
//         //             onPressed: () {},
//         //             icon: Icon(
//         //               Icons.people,
//         //               size: 40,
//         //             )),
//         //         IconButton(
//         //             onPressed: () {},
//         //             icon: Icon(
//         //               Icons.people,
//         //               size: 40,
//         //             )),
//         //         Container(color: arrColors[0]),
//         //         Container(
//         //           color: arrColors[1],
//         //         ),
//         //         Container(
//         //           color: arrColors[2],
//         //         ),
//         //         Container(
//         //           color: arrColors[3],
//         //         ),
//         //         Container(
//         //           color: arrColors[4],
//         //         ),
//         //         Container(
//         //           color: arrColors[5],
//         //         ),
//         //         Container(
//         //           color: arrColors[6],
//         //         ),
//         //         Container(
//         //           color: arrColors[7],
//         //         ),
//         //         Container(
//         //           color: arrColors[8],
//         //         ),
//         //         Container(color: arrColors[0]),
//         //         Container(
//         //           color: arrColors[1],
//         //         ),
//         //         Container(
//         //           color: arrColors[2],
//         //         ),
//         //         Container(
//         //           color: arrColors[3],
//         //         ),
//         //         Container(
//         //           color: arrColors[4],
//         //         ),
//         //         Container(
//         //           color: arrColors[5],
//         //         ),
//         //         Container(
//         //           color: arrColors[6],
//         //         ),
//         //         Container(
//         //           color: arrColors[7],
//         //         ),
//         //         Container(
//         //           color: arrColors[8],
//         //         ),
//         //         Container(color: arrColors[0]),
//         //         Container(
//         //           color: arrColors[1],
//         //         ),
//         //         Container(
//         //           color: arrColors[2],
//         //         ),
//         //         Container(
//         //           color: arrColors[3],
//         //         ),
//         //         Container(
//         //           color: arrColors[4],
//         //         ),
//         //         Container(
//         //           color: arrColors[5],
//         //         ),
//         //         Container(
//         //           color: arrColors[6],
//         //         ),
//         //         Container(
//         //           color: arrColors[7],
//         //         ),
//         //         Container(
//         //           color: arrColors[8],
//         //         ),
//         //         IconButton(onPressed: () {}, icon: Icon(Icons.people))
//         //       ]),
//         // ),
//         // Container(
//         //   height: 150,
//         // ),
//         //       Container(
//         //         height: 350,
//         //         child: GridView.extent(
//         //             maxCrossAxisExtent: 100,
//         //             crossAxisSpacing: 10,
//         //             mainAxisSpacing: 10,
//         //             children: [
//         //               IconButton(
//         //                   onPressed: () {},
//         //                   icon: Icon(
//         //                     Icons.people,
//         //                     size: 40,
//         //                   )),
//         //               IconButton(
//         //                   onPressed: () {},
//         //                   icon: Icon(
//         //                     Icons.people,
//         //                     size: 40,
//         //                   )),
//         //               Container(color: arrColors[0]),
//         //               Container(
//         //                 color: arrColors[1],
//         //               ),
//         //               Container(
//         //                 color: arrColors[2],
//         //               ),
//         //               Container(
//         //                 color: arrColors[3],
//         //               ),
//         //               Container(
//         //                 color: arrColors[4],
//         //               ),
//         //               Container(
//         //                 color: arrColors[5],
//         //               ),
//         //               Container(
//         //                 color: arrColors[6],
//         //               ),
//         //               Container(
//         //                 color: arrColors[7],
//         //               ),
//         //               Container(
//         //                 color: arrColors[8],
//         //               ),
//         //             ]),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         );
//   }
// }
