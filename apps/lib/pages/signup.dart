import 'package:apps/pages/signin.dart';
import 'package:flutter/material.dart';


//import 'package:google_fonts/google_fonts.dart';

class signUP extends StatelessWidget {


  signUP({super.key});
  get obscureText => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35),
                Center(
                  child: Image.asset(
                    "assets/signup.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: const Text(
                    "Sign Up",
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
                    if (value!.isEmpty || value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Re-enter Password',
                    hintText: 'Re-enter your password',
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
                    if (value!.isEmpty || value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: SizedBox(
                    width: 350,
                    height: 46,
                    child: Center(
                      child: Text('Sign Up'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 300,
                ),
                Text(''),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SignInPage()));
                    // Navigate to the Sign Up page
                  },
                  child: Center(
                    child: Text(
                      "Already have an Account?",

                      style: TextStyle(

                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}