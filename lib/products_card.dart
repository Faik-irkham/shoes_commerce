import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List itemPoplars = [
  {
    'title': 'Nike Air Zoom',
    'image': 'assets/s1.png',
    'price': '30.99',
    'color': Colors.lightBlue,
  },
  {
    'title': 'Nike Air Zoom',
    'image': 'assets/s2.png',
    'price': '30.99',
    'color': Colors.purple.shade100,
  },
  {
    'title': 'Nike Air Zoom',
    'image': 'assets/s3.png',
    'price': '30.99',
    'color': Colors.greenAccent,
  },
];

Widget productsCard() {
  return CarouselSlider(
    carouselController: CarouselController(),
    options: CarouselOptions(
      height: 400,
      aspectRatio: 16 / 9,
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      autoPlay: true,
    ),
    items: itemPoplars.map((item) {
      return Builder(
        builder: (BuildContext context) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: item['color'],
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                      height: 260,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item['title'],
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '\$${item['price']}',
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }).toList(),
  );
}
