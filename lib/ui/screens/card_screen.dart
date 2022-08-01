import 'package:flutter/material.dart';

import 'package:seccion6_fluttercourse/ui/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg',
            name: 'A beautiful landscape',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl: 'https://cdn.wallpapersafari.com/23/69/Ob7tUB.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://www.aaronreedphotography.com/images/xl/Let-There-Be-Light-1800.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://rioslandscapingtree.files.wordpress.com/2021/09/114310.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://media-exp1.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2147483647&v=beta&t=tA2WEp7x9015ge1Px-zpkFFUueL-uskh1SlXHTBCXrM'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzwcUYIIUx_4N5ceeHDtW-kBy6mViLSI980g&usqp=CAU'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg'),
          SizedBox(
            height: 10,
          ),
          // CustomCardType2(
          //     imageUrl: 'https://images4.alphacoders.com/275/275494.jpg'),
          // SizedBox(
          //   height: 10,
          // ),
          // CustomCardType2(
          //     imageUrl: 'https://www.wallpaperuse.com/wallp/67-677734_m.jpg'),
          // SizedBox(
          //   height: 10,
          // ),
          // CustomCardType2(
          //     imageUrl:
          //         'https://nt.global.ssl.fastly.net/images/1431920086741-middlelakeandbridgeweb.jpg?width=1920&auto=webp&crop=16:7'),
          // SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }
}
