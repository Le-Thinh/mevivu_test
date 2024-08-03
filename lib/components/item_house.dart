import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mevivu_interview/screen/detail.dart';

class HouseTile extends StatelessWidget {
  String imageUrl;
  String space;
  String houseName;
  String detailAddress;
  String shortAddress;
  String price;
  String description;
  int quantityBed;
  int quantityBath;
  HouseTile(
      {required this.imageUrl,
      required this.space,
      required this.houseName,
      required this.detailAddress,
      required this.shortAddress,
      required this.price,
      required this.description,
      required this.quantityBed,
      required this.quantityBath,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      imageUrl: imageUrl,
                      houseName: houseName,
                      houseAddress: detailAddress,
                      price: price,
                      quantityBed: quantityBed,
                      quantityBath: quantityBath,
                      description: description,
                    )));
      },
      child: Container(
        height: 272,
        width: 222,
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            Container(
              height: 272,
              width: 222,
              margin: const EdgeInsets.only(right: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.scale(
                    scale: 2.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    height: 28,
                    width: 73,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.24),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          space,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    houseName,
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    shortAddress,
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(231, 228, 228, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
