import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/detail_item.dart';

class DetailScreen extends StatefulWidget {
  final String imageUrl;
  final String houseName;
  final String houseAddress;

  final String description;
  final String price;
  final int quantityBed;
  final int quantityBath;

  DetailScreen({
    required this.imageUrl,
    required this.houseName,
    required this.houseAddress,
    required this.description,
    required this.price,
    required this.quantityBed,
    required this.quantityBath,
    super.key,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _showMore = false;
  bool _addArchive = false;

  void _toggleShowMore() {
    setState(() {
      _showMore = !_showMore;
    });
  }

  void _toggleaddArchive() {
    setState(() {
      _addArchive = !_addArchive;
    });
  }

  List<String> GalleryList = [
    'https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__',
    'https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__',
    'https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__',
    'https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__',
    'https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__',
    'https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__',
    'https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__',
    'https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__',
  ];

  @override
  Widget build(BuildContext context) {
    final showMoreDescription = _showMore
        ? widget.description
        : widget.description.length > 100
            ? '${widget.description.substring(0, 100)}...'
            : widget.description;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: Container(
        margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 12,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Align(
                            alignment: Alignment.center,
                            child: Transform.scale(
                              scale: 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  widget.imageUrl,
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                margin:
                                    const EdgeInsets.only(left: 16, top: 20),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 0, 0, 0.24),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Icon(
                                  size: 18,
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: _toggleaddArchive,
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  margin:
                                      const EdgeInsets.only(right: 16, top: 20),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 0, 0, 0.24),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: _addArchive
                                      ? Icon(
                                          Icons.bookmark,
                                          color: Colors.amber,
                                        )
                                      : Icon(
                                          Icons.bookmark_outline,
                                          color: Colors.white,
                                        )),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                widget.houseName,
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.houseAddress,
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(212, 212, 212, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.2),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Icon(
                                          Icons
                                              .airline_seat_individual_suite_sharp,
                                          color:
                                              Color.fromRGBO(212, 212, 212, 1),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${widget.quantityBed} Bedroom",
                                        style: GoogleFonts.raleway(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                212, 212, 212, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 16),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.2),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: const Icon(
                                          Icons.bathtub,
                                          color:
                                              Color.fromRGBO(212, 212, 212, 1),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${widget.quantityBath} Bathroom",
                                        style: GoogleFonts.raleway(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                212, 212, 212, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Description',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        showMoreDescription,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(133, 133, 133, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: _toggleShowMore,
                        child: Text(
                          _showMore ? ' Show Less' : ' Show More',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(196, 196, 196, 1),
                                  Color.fromRGBO(129, 152, 172, 0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage('assets/images/avatar.png'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Garry Allen',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ),
                              Text(
                                'Owner',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(133, 133, 133, 1),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(10, 142, 217, 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(10, 142, 217, 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                CupertinoIcons.chat_bubble_fill,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Gallery',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                GalleryList.length > 4 ? 4 : GalleryList.length,
                            itemBuilder: (context, index) {
                              if (index == 3 && GalleryList.length > 4) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 75,
                                        width: 75,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                            GalleryList[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 75,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+${GalleryList.length - 4}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: DetailItemGallery(
                                    imageUrl: GalleryList[index],
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/283a/ab35/bdf8034cf30d137c478ce73bd08713fd?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BXnK24UpfGwFsCVT9g8aGnon6awZx32PrJf04i~69sWRYiJPsEBcm-2UWklhRdyft3Rm5TiZmcGDxLaAX~ioEOiXf4zO1ak4uquXtoj1IsmRwApMORiVIuizbKPTWUQ9mHt6c7Eph-yIwP0rxC9ti0R7YoFObRbVBOW-80iFRg1hmtFHCgk3X34woK9ZMPMEuVav9WPjBDiYl7fck3tJbyv~HGVvmn5Xizi4~SlmfcvWjWrQa8s4suTzGoFbRht2M3m~uxLzm26QLmlhg7tNrW7DBB03WqkPyRUV06Ks8k6KumDfptcI4SsV2R~J~hiFlCAB7YfRBHeFgz6Weie65g__',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 80, top: 30),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(10, 142, 217, 0.2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              '🔵',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Color.fromRGBO(10, 142, 217, 1)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'price',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(133, 133, 133, 1),
                            ),
                          ),
                        ),
                        Text(
                          'Rp. ${widget.price} / Year',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        print('Rent Now');
                      },
                      child: Container(
                        width: 122,
                        height: 43,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(160, 218, 251, 1),
                            Color.fromRGBO(10, 142, 217, 1),
                          ]),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Rent Now',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
