import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    Key? key,
    this.backgroundColor,
    this.backArrowColor,
    this.actionsColor,
    this.text,
    this.actions,
  }) : super(key: key);

  final Color? backgroundColor;
  final Color? backArrowColor;
  final Color? actionsColor;
  final String? text;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor ?? Color(0xFFFFD726),
        elevation: 0,
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ]),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: backArrowColor ?? Colors.black,
                  ),
                  onPressed: () {
                    // Add your navigation logic here
                  },
                ),
              ),
              SizedBox(width: 20),
              Text(
                text ?? "",
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        
        ),
        actions: actions ??
            [
              // IconButton(
              //   icon: Icon(
              //     Icons.share,
              //     color: actionsColor ?? Color(0xFFF14530),
              //   ),
              //   onPressed: () {
              //     // Add your navigation logic here
              //   },
              // ),
              // IconButton(
              //   icon: Icon(
              //     Icons.search,
              //     color: actionsColor ?? Color(0xFFF14530),
              //   ),
              //   onPressed: () {
              //     // Add your navigation logic here
              //   },
            ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(60); // Adjust the height as needed
}
