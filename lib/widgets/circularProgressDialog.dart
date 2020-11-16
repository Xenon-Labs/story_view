import 'package:flutter/material.dart';
import 'package:story_view/widgets/circularProgress.dart';

typedef MyCallback = Function();

class CircularProgressDialog {
  CircularProgressDialog(BuildContext context, MyCallback callback) {
    showDialog<dynamic>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: const CircularProgress(isLoading: true),
        );
      },
    );
    callback();
  }
}
