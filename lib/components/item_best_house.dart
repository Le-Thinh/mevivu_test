import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestHouseTile extends StatelessWidget {
  String imageUrl;
  String houseName;
  String housePrice;
  int quantityBed;
  int quantityBath;
  BestHouseTile(
      {required this.imageUrl,
      required this.houseName,
      required this.housePrice,
      required this.quantityBed,
      required this.quantityBath,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 85,
          height: 80,
          margin: const EdgeInsets.only(
            right: 16,
            bottom: 12,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Align(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 1.8,
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
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              houseName,
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            Text(
              'Rp. ${housePrice.toString()} / Year',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(10, 142, 217, 1),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.airline_seat_individual_suite_sharp,
                      color: Color.fromRGBO(133, 133, 133, 1),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "$quantityBed Bedroom",
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(133, 133, 133, 1),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    const Icon(
                      Icons.bathtub,
                      color: Color.fromRGBO(133, 133, 133, 1),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "$quantityBath Bathroom",
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(133, 133, 133, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
