import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mevivu_interview/screen/detail.dart';
import 'package:mevivu_interview/screen/home.dart';
import 'package:mevivu_interview/screen/menu.dart';

void main() {
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(),
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DetailScreen(
      //   imageUrl:
      //       'https://s3-alpha-sig.figma.com/img/c0b5/b84e/e1d4028e9f2ad18d455cc20f8f30bcce?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JzIUQzFFvR08qwpKGbXfD2-UcOnbMcU30kPGUDDI2NB-oMOPBYmRp6vVWn9VvYfW6PKNkIYh9Z9YxnT9aBUkw3MFvu-nbjG7lwbxL0PcplbogsCUjV1VUQ-qed4KvhRLrD~9KPFCiL0wYGryYkRXYsNYnet6VDyr9tw5mdxtlbz6TP-tydqzi1B09kVHuY~bGUiHZZ1Y5GvpPAMevDHRYOShsq5K2aDS0bkQ1Uz~cIwfnUpxW4V5O2fScWfc2h2lQazOcBK-MRb-StEhISeq1-kJZDI4KjJD4Om-l8EPpCmNk0kg~MYKjuguaVENKdKHg5CWGcy9Ehwgwhy3RwN81g__',
      //   houseName: 'Dreamsville House',
      //   houseAddress: 'Jl. Sultan Iskandar Muda, Jakarta selatan',
      //   description:
      //       'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
      //   price: '2.500.000.000',
      //   quantityBed: 6,
      //   quantityBath: 2,
      // ),
      home: MenuScreen(),
    );
  }
}
