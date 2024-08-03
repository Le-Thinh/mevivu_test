import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mevivu_interview/components/item_best_house.dart';
import 'package:mevivu_interview/components/item_house.dart';
import 'package:mevivu_interview/icon/notification.dart';

import '../tile/search_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> itemSearch = [
    'House',
    'Apartment',
    'Hotel',
    'Beach',
    'Villa'
  ];

  final List<HouseTile> listHouse = [
    HouseTile(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/c0b5/b84e/e1d4028e9f2ad18d455cc20f8f30bcce?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JzIUQzFFvR08qwpKGbXfD2-UcOnbMcU30kPGUDDI2NB-oMOPBYmRp6vVWn9VvYfW6PKNkIYh9Z9YxnT9aBUkw3MFvu-nbjG7lwbxL0PcplbogsCUjV1VUQ-qed4KvhRLrD~9KPFCiL0wYGryYkRXYsNYnet6VDyr9tw5mdxtlbz6TP-tydqzi1B09kVHuY~bGUiHZZ1Y5GvpPAMevDHRYOShsq5K2aDS0bkQ1Uz~cIwfnUpxW4V5O2fScWfc2h2lQazOcBK-MRb-StEhISeq1-kJZDI4KjJD4Om-l8EPpCmNk0kg~MYKjuguaVENKdKHg5CWGcy9Ehwgwhy3RwN81g__',
      space: '1.8 Km',
      houseName: 'Dreamsville House',
      detailAddress: 'Jl. Sultan Iskandar Muda, Jakarta selatan',
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
      price: '2.500.000.000',
      shortAddress: 'Jl. Cilandak Tengah',
      quantityBath: 6,
      quantityBed: 4,
    ),
    HouseTile(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/fc2a/22eb/77b12515a6310130b669ed3062ff9bd9?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UnZyt-enOGILMJJAcHek0pWMKYsUk1N-31SIZr5~TZO7MaGLTtyfWdlZig9eOgzv1Xgsv2UYVztUrcBQQXPNcmeF03BxcnNoEDauLY~dxw6FPbZ8dAiJyM9nHbETgxyq88rTeLa3ia9VdwXA8QwGCtNZY2Zcm7ayZK7Ug~~EmInSHD6doqS85k3vmoQW~M-QJaSPsoTEi3cTCeqLt3zPFfweagMT3YHOSeqgRClSIQnAz5cCj4rUtl6ATpUwSsvDWFkSLVPrT0Nimt9mntiAw8fXtXF~R8aAwqKNuf8b3z2uvrIR-FbKD5UeG22aRsXLTI92VuldCPG0jk3ynA1aTg__',
      space: '3.0 Km',
      houseName: 'Ascot House',
      detailAddress: 'Jl. Sultan Iskandar Muda, Jakarta selatan',
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
      price: '2.000.000.000',
      shortAddress: 'Jl. Cilandak Tengah',
      quantityBath: 6,
      quantityBed: 4,
    ),
  ];

  final List<BestHouseTile> bestListHouse = [
    BestHouseTile(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/3739/b85c/79b000c10d47f525e33f0be4722db6d3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d26tulPR7KYs5OCK54sea80k5lllIo0VBpIsAonuffbBTfwP4z2RSIRq3d5hjjNSnm54cq4epIZcJE8XcsC4kEtRM03fa7fPcwNaGJEsWMIysX7bdHuif5Ui59zvMHVMiKhBdy-GRzcS3vNExxhi7TA9W8RBDCYxtLXbmaXdWakef99bi0W2xz0iW1ehdJzUMjj8Z32nuv1jxKd1WuAxt2CDlkZyqePJJhXRngbKxMvRfTM1ePHq5m4pbjN1i1JpEr3zbINaivFtZBaOgYiP72ceqstazjFZRr1MbONhAL6ZtrXwicpnaz3OELkSqd12DQHwbn1v0bbLBy7bUpQb9Q__',
      houseName: 'Orchad House',
      housePrice: '2.500.000.000',
      quantityBed: 6,
      quantityBath: 4,
    ),
    BestHouseTile(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/15c6/6ec2/f6bffc6b811c2d8b71352fb76df17b3a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=I8C7-P1llWr1Nj7JDTX0zbwSKHNKHJLZsTiVxs1VJ-LIUZl6uXd6TxUqiQNx-83wM5LEicOaGvmApGTEvJD9qTTK93ORLSO1oizjOazChUejrj24-vZKOZWlnHz4lPQ8DGkE6CJ2a52odDQg7AlTjLNeDqrvijEREq1NSSZAe3IUSoGlYr-cOdIdvgWvoM-dnikZ8cQskLIMa6kdWm6Hwi6vLZWqZSae2UY2D5vBoZ4mm5yby27IIav9QOmM4jfdWy3ZKvSoGTijneVrIYGSTcLyWMe6FPU9XHTgwH~frqr4QAdgOEFVEm60uAFtSQlRq-4S0Sd5dLzFMShw9ecZAg__',
      houseName: 'The Hollies House',
      housePrice: '2.000.000.000',
      quantityBed: 5,
      quantityBath: 2,
    ),
  ];

  int? selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(131, 131, 131, 1),
                        )),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Jakarta',
                            style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButtonRedDotNotificationWidget(
                    (Icons.notifications_outlined),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(133, 133, 133, 1),
                        ),
                        hintText: 'Search address or near you',
                        hintStyle: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(133, 133, 133, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      print("Search");
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(160, 218, 251, 1),
                                Color.fromRGBO(10, 142, 217, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.filter_list_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemSearch.length,
                  itemBuilder: (context, index) {
                    return SearchTile(
                      text: itemSearch[index],
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(left: 4, right: 16),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near from you',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Text(
                      'see more',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 272,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listHouse.length,
                  itemBuilder: (context, index) {
                    final house = listHouse[index];
                    return HouseTile(
                      imageUrl: house.imageUrl,
                      space: house.space,
                      houseName: house.houseName,
                      detailAddress: house.detailAddress,
                      shortAddress: house.shortAddress,
                      price: house.price,
                      description: house.description,
                      quantityBed: house.quantityBed,
                      quantityBath: house.quantityBath,
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(left: 4, right: 16),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best For You',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Text(
                      'see more',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: bestListHouse,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
