import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saarthi/components/login_signup_button.dart';
import 'package:saarthi/constants.dart';
import 'package:saarthi/screens/signup_screen.dart';
import 'package:saarthi/services/authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = AuthService();

  final _email = TextEditingController();
  final _password = TextEditingController();

  _login() async {
    await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);
  }

  goToSignup(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignupScreen()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,  
        backgroundColor: const Color(0xFF2A0906),
        title: Text(
          'Saarthi',
          style: GoogleFonts.merriweather(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Welcome',
                    style:
                        TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'User',
                    style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _email,
                decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _password,
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              LoginSignupButton(
                onPress: _login,
                title: 'Login',
              ),
              const SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () => goToSignup(context),
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
