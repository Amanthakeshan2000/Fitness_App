import 'package:apps/pages/reset_password_page.dart';
import 'package:apps/pages/signup.dart';
import 'package:flutter/material.dart';

import 'forget.dart';
import 'home_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image(
            image: AssetImage('assets/bg1.jpg'),
            fit: BoxFit.cover,
            color: Colors.white.withOpacity(0),
            colorBlendMode: BlendMode.modulate,
            width: double.infinity,
            height: double.infinity,
          ),
          // Centered Content
          Center(
            child: SignInForm(),
          ),
        ],
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset(
              "assets/signin.png", // Corrected image path
              width: 160,
              height: 160,
            ),
            Center(
              child: Text(
                "Sign In",
                style: TextStyle(

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    // Toggle password visibility
                  },
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false, // Add logic to manage "Remember me" state
                  onChanged: (value) {
                    // Handle "Remember me" checkbox state
                  },
                ),
                Text('Remember me'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => foget()));
                  },
                  child: Text('Forgot Password'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: SizedBox(
                width: 350,
                height: 46,
                child: Center(
                  child: Text('Sign In'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(''),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // children: [
              //   IconButton(
              //     icon: Icon(Icons.g_translate),
              //     onPressed: () {
              //       // Handle Google sign-in
              //     },
              //   ),
              //   IconButton(
              //     icon: Icon(Icons.business),
              //     onPressed: () {
              //       // Handle Microsoft sign-in
              //     },
              //   ),
              // ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signUP()));
                // Navigate to the Sign Up page
              },
              child: Text(
                "Don't have an account?",

                style: TextStyle(

                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
