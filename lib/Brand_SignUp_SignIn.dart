import 'package:flutter/material.dart';

class GreeniceSignupScreen extends StatelessWidget {
  const GreeniceSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Center the content vertically
            crossAxisAlignment: CrossAxisAlignment.stretch,  // Stretch the widgets horizontally
            children: [
              // Top section with logo and greeting
              Row(
                mainAxisAlignment: MainAxisAlignment.center,  // Center the Row content horizontally
                children: [
                  // Greenice logo
                  Image.asset(
                    'assets/green_logo.png', // Replace with your logo path
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'GREENICE',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Warmest Greetings from Greenice,\nwelcome to our Green community\nwhere environmental value is\nemphasized and constantly developed',
                textAlign: TextAlign.center,  // Center the text horizontally
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 32),
              // Sign up buttons
              ElevatedButton(
                onPressed: () {
                  // Handle phone number sign up
                },
                child: const Text('Sign Up with Phone Number'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle email address sign up
                },
                child: const Text('Sign Up with Email Address'),
              ),
              const SizedBox(height: 32), // Add spacing before the bottom circles
              // Bottom section with green circles
              const Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Center the circles horizontally
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 16),  // Add spacing between circles
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 16),  // Add spacing between circles
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
