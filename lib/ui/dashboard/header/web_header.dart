import 'package:flutter/material.dart';
import 'package:flutter_web_ui/ui/dashboard/header/search_bar.dart';
import 'package:flutter_web_ui/ui/dashboard/header/user_profile_card.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(flex: 2),
        const Expanded(child: SearchBar()),
        const UserProfileCard()
      ],
    );
  }
}