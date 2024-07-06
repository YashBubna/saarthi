import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saarthi/components/login_signup_button.dart';
import 'package:saarthi/screens/login_page.dart';
import 'package:saarthi/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: const Color(0xFF2A0906),
        title: Center(
          child: Text(
            'Saarthi',
            style: GoogleFonts.merriweather(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 240,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage('images/logo.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              LoginSignupButton(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  title: 'Login'),
              const SizedBox(height: 15),
              LoginSignupButton(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                  title: 'Signup'),
            ],
          ),
        ),
      ),
    );
  }
}
