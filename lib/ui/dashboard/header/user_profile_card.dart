import 'package:flutter/material.dart';
import 'package:flutter_web_ui/util/color_utils.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.account_circle,
            size: 38,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("Faisal Javed"),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
