import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher Example',
      home: URLLauncherScreen(),
    );
  }
}

class URLLauncherScreen extends StatelessWidget {
  final String phoneNumber = '1234567890'; // Replace with the desired phone number
  final String smsNumber = '1234567890'; // Replace with the desired SMS recipient
  final String message = 'Hello! This is a test message.'; // Your SMS message

  // Function to make a call
  void _makePhoneCall(String phoneNumber) async {
    final Uri url = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to send SMS
  void _sendSMS(String message, String recipient) async {
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: recipient,
      queryParameters: {'body': message},
    );
    if (await canLaunch(smsUri.toString())) {
      await launch(smsUri.toString());
    } else {
      throw 'Could not send SMS to $recipient';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('URL Launcher Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _makePhoneCall(phoneNumber),
              child: Text('Call $phoneNumber'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _sendSMS(message, smsNumber),
              child: Text('Send SMS to $smsNumber'),
            ),
          ],
        ),
      ),
    );
  }
}