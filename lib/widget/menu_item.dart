import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget menuItem(
  BuildContext context,
  Color? background,
  String text,
  IconData icon,
  Color colorText,
  Color colorIcon,
  FontWeight fontWeight,
  bool isSelected,
) {
  return Container(
    decoration: BoxDecoration(
      color: isSelected ? Colors.white : background,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      border: isSelected
          ? Border.all(color: const Color.fromRGBO(10, 142, 217, 1), width: 2)
          : null,
    ),
    width: MediaQuery.of(context).size.width * 0.44,
    height: MediaQuery.of(context).size.height * 0.055,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected
                  ? const Color.fromRGBO(10, 142, 217, 1)
                  : colorIcon,
            ),
            const SizedBox(width: 24),
            Text(
              text,
              style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                fontSize: 16,
                fontWeight: fontWeight,
                color: isSelected
                    ? const Color.fromRGBO(10, 142, 217, 1)
                    : colorText,
              )),
            )
          ],
        ),
      ),
    ),
  );
}
