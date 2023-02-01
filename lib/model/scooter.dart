import 'package:flutter/material.dart';

class Items {
  final int id;
  final String title, description, price, shortDescription;
  final Color color;
  final List<Image> images;

  Items({
    required this.title,
    required this.description,
    required this.color,
    required this.images,
    required this.id,
    required this.price,
    required this.shortDescription,
  });
}

List<Items> fruits = [
  Items(
    id: 0,
    title: 'Bajaj Chetak',
    description: textDescrition,
    color: Colors.deepPurple[300]!,
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    price: '\$1.4',
    shortDescription: textShortDescription,
  ),
  Items(
    id: 1,
    title: 'Okinawa Okhi 90.',
    price: '\$2.3',
    description: textDescrition,
    color: Colors.green[300]!,
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    shortDescription: textShortDescription,
  ),
  Items(
    id: 2,
    title: 'Ather Energy 450x Gen 3.',
    description: textDescrition,
    price: '\$1.5',
    color: Colors.deepOrange[300]!,
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    shortDescription: textShortDescription,
  ),
  Items(
    id: 3,
    title: 'Hero Vida V1.',
    description: textDescrition,
    color: Colors.red[200]!,
    price: '\$3.1',
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    shortDescription: textShortDescription,
  ),
  Items(
    id: 4,
    title: 'Ola Electric S1 Pro',
    description: textDescrition,
    price: '\$1.2',
    color: Colors.indigo[300]!,
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    shortDescription: textShortDescription,
  ),
  Items(
    id: 5,
    title: 'TVS iQube ST',
    description: textDescrition,
    color: Colors.red[300]!,
    price: '\$2.6',
    images: [
      Image.asset('assets/ig 1.png', height: 80),
      Image.asset('assets/ig 2.png'),
      Image.asset('assets/ig 3.png'),
    ],
    shortDescription: textShortDescription,
  ),
];

String textShortDescription =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry";
String textDescrition =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";