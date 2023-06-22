import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreeenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({ Key? key,
    required this.webScreeenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if(constrains.maxWidth > webScreenSize) {
          return webScreeenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}