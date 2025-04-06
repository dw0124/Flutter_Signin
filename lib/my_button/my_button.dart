import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({
    required this.image,
    required this.text,
    required this.color,
    required this.radius,
    required this.onPressed
  });

  // image, text는 모두 Widget의 하위 클래스임
  // 다양한 위젯(Text, Row, Column 등)을 허용하기 위해 Widget 타입 사용
  // Widget 타입은 유연성이 높지만, 타입 안전성은 다소 떨어질 수 있음

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
