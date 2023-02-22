import 'package:flutter/material.dart';
import 'package:flutter_components/screens/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  //const CustomCardType2({Key? key}) : super(key: key);
  const CustomCardType2(
      {super.key, required this.imageUrl, this.nameDescription});
  final String imageUrl;
  final String? nameDescription;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primaryColor.withOpacity(1),
      elevation: 10.0,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nameDescription != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(bottom: 10, right: 20, top: 10),
              child: Text(nameDescription!),
            )
        ],
      ),
    );
  }
}
