import 'package:flutter/material.dart';

import 'package:seccion6_fluttercourse/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 245,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}
