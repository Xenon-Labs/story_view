import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {

  const CircularProgress({@required this.isLoading});
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child:
      CircularProgressIndicator(
        backgroundColor: Theme.of(context).cursorColor
      ));
    }

    return Container(height: 0.0, width: 0.0,);
  }
}