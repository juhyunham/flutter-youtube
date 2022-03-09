import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  Widget _logo() {
    return Container(
      child: Image.asset("assets/images/logo.png", width: 130)
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: const SizedBox(
            width: 23, 
            height: 23, 
            child: SvgPicture.asset("asset/svg/icon/bell.svg"),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: const SizedBox(
            width: 30, 
            height: 30, 
            child: SvgPicture.asset("asset/svg/icon/search.svg"),
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network("https://avatars.githubusercontent.com/u/68492359?s=400&u=bbb5f614ca6dd67870a2d46d96a46bb931f152ab&v=4").image,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _actions(),
        ],)
    );
  }
}