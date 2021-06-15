import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Function validation;
  
  EmailField({@required this.labelText, 
                      @required this.hintText, 
                      @required this.iconData, 
                      @required this.textEditingController, 
                      @required this.textInputType, 
                      @required this.validation});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      validator: validation,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(Icons.mail_outline_rounded),
        ),
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
    );
  }
}