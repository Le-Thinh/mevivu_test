import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailItemGallery extends StatelessWidget {
  String imageUrl;
  DetailItemGallery({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 11),
          height: 75,
          width: 75,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
