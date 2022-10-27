import 'package:flutter_application_imam_1/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.8777);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 57.6,
                margin: const EdgeInsets.only(
                  top: 28.8,
                  left: 28.8,
                  right: 28.8,
                 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.reorder),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a928),
                      ),
                      child: const Icon(Icons.search),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text(
                  'Welcome Imam \n Mau Liburan Kemana!',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 42, fontWeight: FontWeight.w700),
                  )
                ),
                Container(
                  height: 218.4,
                  margin: const EdgeInsets.only(top: 28.8),
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/hot-air-balloons-flying-over-rock-formations-at-sunrise-in-cappadocia-picture-id1297084529?k=20&m=1297084529&s=612x612&w=0&h=tMCNf9tro_6BJEhV2AjDSqk3MkPdQgOUddk8SfI2ZWA='))),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                          ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/hot-air-balloons-flying-above-rocks-in-cappadocia-picture-id1036097662?k=20&m=1036097662&s=612x612&w=0&h=-UAf3gvgMGkJhSPQ3C4AlfqiUhp86aQCbOtkKjnV5tM='))),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                          ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/hot-air-balloon-picture-id857125652?k=20&m=857125652&s=612x612&w=0&h=t6DOPW5n5PRyqRfDMb3m1eeoU2MkHR87xe0fBGNGk1I='))),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                          ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://media.istockphoto.com/photos/hot-air-balloons-over-cappadocia-turkey-picture-id969156262?k=20&m=969156262&s=612x612&w=0&h=IDw0RPx95ZTvym-sDCFtfOC4pw-bTf3YkOZyL6jAevc='))),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                          ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 28.8, top: 28.8),
                         child: SmoothPageIndicator(
                           controller: _pageController,
                           count: 4,
                           effect: const ExpandingDotsEffect(
                             activeDotColor: Colors.blue,
                             dotColor: Colors.blueGrey,
                             dotHeight: 5,
                             dotWidth: 6,
                             spacing: 5),
                          ),
                         ),
                         // judul untuk section vertical contect
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Text(
                                 'Untuk Anda',
                                 style: GoogleFonts.playfairDisplay(
                                   fontSize: 28,
                                   fontWeight: FontWeight.w700,
                                   color: Colors.black,                              ),
                               ),
                               Text(
                              'Show All',
                               style: GoogleFonts.playfairDisplay(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.blueGrey,
                               )
                               )
                             ],
                           ),
                         ),

                         // Listview (Vertical content)
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/cappadocia-turkey-sunrise-in-the-hills-with-hot-air-balloons-in-picture-id1214880754?k=20&m=1214880754&s=612x612&w=0&h=tR06Wr3aDI6g-W1mc3mRBl-Q0-WwP0Y_tQCvA0w0YLg='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/hot-air-balloons-in-cappadocia-valleys-picture-id825672518?k=20&m=825672518&s=612x612&w=0&h=3e9iNrP2GHvBnwl8rhj89x-cnt0-6yG6Qsel54UtXKQ='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/hot-balloons-at-turkey-picture-id1201871916?k=20&m=1201871916&s=612x612&w=0&h=Gwmcj80Pjp4GwQ6MmvKABv1uxJGFUqQ0UpDwn6uDNxw='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/vintage-photo-of-hot-air-balloon-flying-over-rock-landscape-picture-id505616930?k=20&m=505616930&s=612x612&w=0&h=QDir19tkdyGrF7qMrSfaBMDQfisDmLkn2ARU-AI8wR0='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/hot-air-balloon-flying-over-volcanic-rock-landscape-cappadocia-picture-id1282352026?k=20&m=1282352026&s=612x612&w=0&h=dxWXy6nMIjo76VcXn2sxE4iqzYRuHsJMh_BZdb1RBQE='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                           child: GestureDetector(
                             child: Container(
                               margin: const EdgeInsets.only(right: 28.8),
                               width: 333.6,
                               height: 218.4,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                                 image: const DecorationImage(
                                   fit: BoxFit.cover,
                                   image: NetworkImage(
                                       'https://media.istockphoto.com/photos/hot-air-balloon-and-fairy-chimneys-in-cappadocia-picture-id1001389960?k=20&m=1001389960&s=612x612&w=0&h=MZaGyPOREy4R_5VGqQHuuQUZF90H1CDyh8X7QsFAixk='),
                                ),
                              ),
                            ),
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ), 
                              );
                              print("You Click Me"); 
                            },
                         ),
                        ),

                        // Penutup ListView
            ]
          ),
        ),
      ),
    );
  }
}