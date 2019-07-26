import 'package:flutter/material.dart';

class ModalTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Modal'),
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                barrierColor: Colors.black54,
                barrierDismissible: true,
                opaque: false,
                pageBuilder: (BuildContext context, _, __) {
                  return GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Center(child: Text('Design you modal')));
                },
                transitionsBuilder:
                    (___, Animation<double> animation, ____, Widget child) {
                  return FadeTransition(
                    opacity: animation,
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.5, end: 1.0)
                          .animate(animation),
                      child: child,
                    ),
                  );
                }));
      },
    );
  }
}
