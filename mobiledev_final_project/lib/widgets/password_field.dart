import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {

  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController textEditingController;
  final bool obscureText;
  final Function onTap;
  final Function validation;

  PasswordField({@required this.labelText, 
                  @required this.hintText, 
                  @required this.iconData, 
                  @required this.textEditingController, 
                  @required this.obscureText, 
                  @required this.onTap,
                  @required this.validation});

  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      validator: validation,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal:15.0),
          child: Icon(Icons.lock)
          ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
        ),
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
        )
      );
  }
}