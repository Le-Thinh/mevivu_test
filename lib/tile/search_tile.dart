import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;
  const SearchTile(
      {required this.isSelected,
      required this.onTap,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration: isSelected
            ? BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(160, 218, 251, 1),
                    Color.fromRGBO(10, 142, 217, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              )
            : BoxDecoration(
                color: const Color.fromRGBO(247, 247, 247, 1),
                borderRadius: BorderRadius.circular(12),
              ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
          child: Text(
            text,
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: isSelected
                    ? Colors.white
                    : const Color.fromRGBO(133, 133, 133, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
