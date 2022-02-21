import 'package:flutter/material.dart';
import '../components/companents.dart';

List<Widget> containers = List.generate(
  5,
  (index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      image: const DecorationImage(
          image: NetworkImage(
              'https://avatars.mds.yandex.net/i?id=dfdb27ef931c8a244b692bc0478ae9f0-5220409-images-thumbs&n=13'),
          fit: BoxFit.cover),
      borderRadius: radiusCircular(8),
    ),
  ),
);


List<Widget> singleContainers = List.generate(
  5,
  (index) => Container(
    decoration:const BoxDecoration(
      image:  DecorationImage(
          image: NetworkImage(
              'https://avatars.mds.yandex.net/i?id=dfdb27ef931c8a244b692bc0478ae9f0-5220409-images-thumbs&n=13'),
          fit: BoxFit.cover),
    ),
  ),
);

