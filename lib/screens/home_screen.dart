import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saarthi/components/service_icon.dart';
import 'package:saarthi/constants.dart';
import 'package:saarthi/screens/hospital/hospital_screen.dart';
import 'package:saarthi/screens/police/police_screen.dart';
import 'package:saarthi/services/authentication.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: const Color(0xFF2A0906),
        title: Text(
          'Saarthi',
          style: GoogleFonts.merriweather(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/navigationImage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Emergency Hub!',
                        style: GoogleFonts.cabin(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Your Safety, Our Priority',
                        style: GoogleFonts.cabin(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'My Complaints',
                style: GoogleFonts.cabin(fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.history, color: Colors.black),
              onTap: () {
                // Navigate to complaints page
              },
            ),
            ListTile(
              title: Text(
                'Help',
                style: GoogleFonts.cabin(fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.help, color: Colors.black),
              onTap: () {
                // Navigate to history page
              },
            ),
            ListTile(
              title: Text(
                'Sign Out',
                style: GoogleFonts.cabin(fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.logout, color: Colors.black),
              onTap: () async {
                await auth.signout();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'images/home_image.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
                  child: Text(
                    'Hello, Team!',
                    style: GoogleFonts.cabin(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
                  child: Text(
                    'Find emergency services',
                    style: GoogleFonts.cabin(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Text(
                    'nearby',
                    style: GoogleFonts.cabin(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                ServiceIcon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AppointmentPage(),
                                      ),
                                    );
                                  },
                                  image: const AssetImage('images/doctor.jpg'),
                                ),
                                Text(
                                  'Doctor',
                                  style: kServiceTextStyle.copyWith(
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ServiceIcon(
                                  image: const AssetImage('images/fire.png'),
                                  onPressed: () {},
                                ),
                                Text(
                                  'Fire',
                                  style: kServiceTextStyle.copyWith(
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                ServiceIcon(
                                  image: const AssetImage('images/police.png'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PoliceScreen()),
                                    );
                                  },
                                ),
                                Text(
                                  'Police',
                                  style: kServiceTextStyle.copyWith(
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ServiceIcon(
                                  image: const AssetImage('images/vehicle.jpg'),
                                  onPressed: () {},
                                ),
                                Text(
                                  'Vehicle',
                                  style: kServiceTextStyle.copyWith(
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
