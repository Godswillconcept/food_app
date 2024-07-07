import 'package:flutter/material.dart';

import 'app_text.dart';

class LocationMarker extends StatelessWidget {
  const LocationMarker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
      child: Row(
        children: [
          Icon(Icons.pin_drop_outlined),
          AppText(
            data: "9 West 46th Street, New York City",
            color: Colors.black,
            fsize: 16,
            fweight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
