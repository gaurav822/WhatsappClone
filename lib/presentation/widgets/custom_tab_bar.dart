import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class CustomTabBar extends StatelessWidget {
  final int index;

  const CustomTabBar({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: index == 0 ? textIconColor : Colors.transparent,
                        width: 3.0))),
            width: 40,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "CHATS",
              textColor: index == 1 ? textIconColor : textIconColorGray,
              borderColor: index == 1 ? textIconColorGray : Colors.transparent,
              // borderWidth: 0.0,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "STATUS",
              textColor: index == 2 ? textIconColor : textIconColorGray,
              borderColor: index == 2 ? textIconColorGray : Colors.transparent,
            ),
          ),
          Expanded(
            child: CustomTabBarButton(
              text: "CALLS",
              textColor: index == 3 ? textIconColor : textIconColorGray,
              borderColor: index == 3 ? textIconColorGray : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}

class CustomTabBarButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;

  const CustomTabBarButton({
    Key key,
    this.text,
    this.borderColor,
    this.textColor,
    this.borderWidth = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: borderColor, width: borderWidth))),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
      ),
    );
  }
}
