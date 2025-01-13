import 'package:apps/pages/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class foget extends StatelessWidget {
  const foget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPasswordPage(),
    );
  }
}

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  bool _isSendingEmail = false;
  int _timerValue = 10;
  late Timer _countdownTimer;

  void _sendResetEmail() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSendingEmail = true;
      });

      // Simulate sending reset email
      // can replace this with actual reset logic
      _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_timerValue > 0) {
          setState(() {
            _timerValue--;
          });
        } else {
          timer.cancel();
          setState(() {
            _isSendingEmail = false;
          });
        }
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password reset email sent successfully')),
      );
    }
  }

  @override
  void dispose() {
    _countdownTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set background color to white
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black, // Set text color to black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,

            color: Colors.black, // Set text color to black
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image.asset(
                      "assets/signup.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ), // Replace with your image path
                ),
              ),
              const SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'Please enter your email address.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'We will send a mail to your email address to',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'reset your password.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Text(
                            _timerValue >= 10 ? _timerValue.toString()[0] : '0',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Text(
                            _timerValue >= 10
                                ? _timerValue.toString()[1]
                                : _timerValue.toString(),
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Text(
                          ':',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(width: 4.0),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    const SizedBox(height: 16.0), // Add space here
                    Container(
                      padding:
                      const EdgeInsets.all(8.0), // Adjust padding as needed
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent, // Border color
                          width: 10.0, // Border width
                        ),
                       // Adjust the border radius
                      ),
                      child:   TextFormField(
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
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child:  ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => reset1()));
              },
              child: SizedBox(
                width: 250,
                height: 46,
                child: Center(
                  child: Text('Submit'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
