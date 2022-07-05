import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String image;

  const ItemWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 7),
            blurRadius: 8,
            color: Colors.black.withOpacity(0.5),
          )
        ]
      ),
      alignment: Alignment.centerLeft,
      child: Image.network(
        fit: BoxFit.cover,
        height: 100,
        width: double.infinity,
        image,
        errorBuilder: (context,object,stacktrace){
          return Container(
            color: Colors.white,
            width: 100,
            height: 100,
            child: const FlutterLogo(),
          );
        },
      ),
    );
  }
}
