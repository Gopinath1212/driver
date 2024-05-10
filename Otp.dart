
import 'package:driver/SelectCity.dart';
import 'package:driver/SelectVehicle.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One-Time Verification Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OtpVerificationPage(),
    );
  }
}

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the one-time verification code sent to your phone',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            PinCodeTextField(
              appContext: context,
              length: 6, // Specify the length of your OTP
              onChanged: (value) {
                // Handle the changes in the OTP input
                print(value);
              },
              onCompleted: (value) {
                // Handle the completion of OTP input
                print('Completed: $value');
                // You can add logic here to verify the OTP
              },
              textStyle: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add logic here to verify the OTP
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>City())
                );
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}