import 'dart:core';

import 'package:flutter/material.dart';

import 'buying_page.dart';
import 'contact_seller.dart';

class ProductListPage extends StatelessWidget {
  String productImage1 = 'assets/product1.jpg';
  String productDescription1 =
      'ASUS Chromebook Vibe C55 Flip, Cloud Gaming Laptop, 15.6" Full HD 144 Hz Touch Display, Intel® Core™ i5-1135G7 Processor, 512GB SSD, 16GB RAM, ChromeOS, Mineral Gray, CX5501FEA-AS562T';
  String productImage2 = 'assets/product2.jpg';
  String productDescription2 =
      'Lenovo - 2022 - IdeaPad Gaming 3 - Essential Gaming Laptop Computer - 15.7" FHD - 120Hz - IdeaPad Gaming RTX 3050 - 256GB NVMe Storage - NVIDIA GeForce RTX 3050 Graphics - Windows 11 Home';
  String productImage3 = 'assets/product3.jpg';
  String productDescription3 =
      'ASUS ROG Strix G16 (2023) Gaming Laptop, 16” 16:10 FHD 165Hz, GeForce RTX 4060, Intel Core i7-13650HX, 16GB DDR5, 512GB PCIe SSD, Wi-Fi 6E, Windows 11, G614JV-AS73, Eclipse Gray';
  String phoneNumber = '05513694355';
  String emailAddress = 'email@example.com';
  String chatServiceUrl = '';
  String sellerWebsiteUrl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
      ),
      body: ListView(
        children: [
          ProductItem(
            image: productImage1,
            description: productDescription1,
            price: 699,
            onBuyPressed: () {
              // Navigate to buying page for this product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BuyingPage(
                          image: productImage1,
                          description: productDescription1,
                          price: 699,
                        )),
              );
            },
            onContactSellerPressed: () {
              // Navigate to contact seller page for this product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContactSellerPage(
                          phoneNumber: phoneNumber,
                          emailAddress: emailAddress,
                          chatServiceUrl: chatServiceUrl,
                          sellerWebsiteUrl: sellerWebsiteUrl,
                        )),
              );
            },
          ),
          ProductItem(
            image: productImage2,
            description: productDescription2,
            price: 699,
            onBuyPressed: () {
              // Navigate to buying page for this product
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyingPage(
                      image: productImage2,
                      description: productDescription2,
                      price: 699,
                    ),
                  ));
            },
            onContactSellerPressed: () {
              // Navigate to contact seller page for this product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContactSellerPage(
                          phoneNumber: phoneNumber,
                          emailAddress: emailAddress,
                          chatServiceUrl: chatServiceUrl,
                          sellerWebsiteUrl: sellerWebsiteUrl,
                        )),
              );
            },
          ),
          ProductItem(
            image: productImage3,
            description: productDescription3,
            price: 1329,
            onBuyPressed: () {
              // Navigate to buying page for this product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BuyingPage(
                          image: productImage3,
                          description: productDescription3,
                          price: 1329,
                        )),
              );
            },
            onContactSellerPressed: () {
              // Navigate to contact seller page for this product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContactSellerPage(
                          phoneNumber: phoneNumber,
                          emailAddress: emailAddress,
                          chatServiceUrl: chatServiceUrl,
                          sellerWebsiteUrl: sellerWebsiteUrl,
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String description;
  final double price;
  final VoidCallback onBuyPressed;
  final VoidCallback onContactSellerPressed;

  const ProductItem({
    required this.image,
    required this.description,
    required this.price,
    required this.onBuyPressed,
    required this.onContactSellerPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          ListTile(
            title: Text(description),
            subtitle: Text(
              '\$$price',
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                onPressed: onBuyPressed,
                child: Text('Buy'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
              ElevatedButton(
                onPressed: onContactSellerPressed,
                child: Text('Contact Seller'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
