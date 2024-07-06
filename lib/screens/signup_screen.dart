import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saarthi/components/login_signup_button.dart';
import 'package:saarthi/constants.dart';
import 'package:saarthi/screens/login_page.dart';
import 'package:saarthi/services/authentication.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = AuthService();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _newPassword = TextEditingController();
  final _phoneNumer = TextEditingController();

  _signup() async {
    await _auth.createUserWithEmailAndPassword(_email.text, _password.text);
    Navigator.pop(context);
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
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
                    'Sign',
                    style:
                        TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Up',
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
                'Fill in your registration form',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _name,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Full name'),
              ),
              const SizedBox(
                height: 20,
              ),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _newPassword,
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Confirm your assword'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _phoneNumer,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Phone No.'),
              ),
              const SizedBox(
                height: 40,
              ),
              LoginSignupButton(onPress: _signup, title: 'Signup'),
              const SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () => goToLogin(context),
                  child: const Text(
                    "Login",
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
