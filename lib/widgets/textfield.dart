import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Define colors directly
    final Color primaryColor = Colors.lightGreen;
    final Color secondaryColor = Colors.green[800]!;
    final Color buttonTextColor = Colors.white;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Welcome Card
              Card(
                elevation: 5,
                color: primaryColor.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.money, size: 40, color: secondaryColor),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "Welcome to Money Transfer!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Mobile Number Field
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: secondaryColor),
                  labelText: 'Enter Mobile Number',
                  labelStyle: TextStyle(color: secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // City Field
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_city, color: secondaryColor),
                  labelText: 'Enter City',
                  labelStyle: TextStyle(color: secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Email Field
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: secondaryColor),
                  labelText: 'Enter Email',
                  labelStyle: TextStyle(color: secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Amount Field
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money, color: secondaryColor),
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Add submit logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  overlayColor: primaryColor.withOpacity(0.5),
                ),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: buttonTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}