/** 
*  text_field.dart
*  mlcoin_app 2020-06-02.
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'package:flutter/material.dart';
///
class TextFieldAtom extends StatefulWidget {
  ///
  TextFieldAtom.search({
    @required this.onChanged,
    this.placeHolder    = 'Search',
    this.isBorder       = true,
    this.textInputType  = TextInputType.text
  });
  ///
  TextFieldAtom.email({
    @required this.onChanged,
    this.placeHolder    = 'Email',
    this.isBorder       = true,
    this.textInputType  = TextInputType.emailAddress
  });
  ///
  TextFieldAtom.password({
    @required this.onChanged,
    this.placeHolder    = 'Password',
    this.isBorder       = true,
    this.textInputType  = TextInputType.visiblePassword
  });
  ///
  TextFieldAtom.phone({
    @required this.onChanged,
    this.placeHolder    = 'Phone',
    this.isBorder       = true,
    this.textInputType  = TextInputType.phone
  });
  ///
  TextFieldAtom.datetime({
    @required this.onChanged,
    this.placeHolder    = 'Datetime',
    this.isBorder       = true,
    this.textInputType  = TextInputType.datetime
  });
  ///
  TextFieldAtom.url({
    @required this.onChanged,
    this.placeHolder    = 'URL',
    this.isBorder       = true,
    this.textInputType  = TextInputType.url
  });
  ///
  TextFieldAtom.number({
    @required this.onChanged,
    this.placeHolder    = 'Number',
    this.isBorder       = true,
    this.textInputType  = TextInputType.number
  });
  ///
  final ValueChanged<String> onChanged;
  final String placeHolder;
  final bool isBorder;
  final TextInputType textInputType;
  ///
  @override
  _TextFieldAtomState createState() => _TextFieldAtomState();
}
///
class _TextFieldAtomState extends State<TextFieldAtom> {
  @override
  Widget build(BuildContext context) {
    return TextField(      
      autofocus: false,
      keyboardType: widget.textInputType,
      onChanged: widget.onChanged != null ? widget.onChanged : (){},
      decoration: InputDecoration(
        border: widget.isBorder ? OutlineInputBorder() : InputBorder.none,
        hintText: widget.placeHolder
      ),
    );
  }
}
///