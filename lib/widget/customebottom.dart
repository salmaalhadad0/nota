import 'package:flutter/material.dart';

class Customebottom extends StatelessWidget {
  Customebottom({super.key, this.ontap, this.isloading = false});

  @override
  void Function()? ontap;
  final bool isloading;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple,
        ),
        child: Center(
          child:
              isloading
                  ? CircularProgressIndicator()
                  : Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
        ),
      ),
    );
  }
}
