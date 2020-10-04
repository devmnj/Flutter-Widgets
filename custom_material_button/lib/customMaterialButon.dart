import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//This Widget written by [manojap.github.io]
class MButon extends StatelessWidget {
  MButon({@required this.onPressed,@required this.title, this.style, this.splash, this.background_color, this.newshape, this.newicon, this.iconColor});
  final String title;
  final GestureTapCallback onPressed;
  final TextStyle style;
  final Color splash;
  final Color background_color;
  final ShapeBorder newshape;
  final IconData newicon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: background_color,
      splashColor: splash,
      shape:newshape!=null ? newshape:  const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(mainAxisSize: MainAxisSize.min,
          children:  [
            Icon(
              newicon!=null ? newicon : Icons.help,
              color: iconColor!=null ? iconColor: Colors.amber,
            ),
            SizedBox(
              width: 8,
            ),
             Text(
              title,
              style: style,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
