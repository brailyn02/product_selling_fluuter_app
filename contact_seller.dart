import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class ContactSellerPage extends StatelessWidget {
  final String phoneNumber;
  final String emailAddress;
  final String chatServiceUrl;
  final String sellerWebsiteUrl;

  ContactSellerPage({
    required this.phoneNumber,
    required this.emailAddress,
    required this.chatServiceUrl,
    required this.sellerWebsiteUrl,
  });

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Seller'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Call Seller'),
              onTap: () {
                _launchURL('tel:$phoneNumber');
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email Seller'),
              onTap: () {
                _launchURL('mailto:$emailAddress');
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat with Seller'),
              onTap: () {
                _launchURL(chatServiceUrl);
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Visit Seller Website'),
              onTap: () {
                _launchURL(sellerWebsiteUrl);
              },
            ),
          ],
        ),
      ),
    );
  }
}
