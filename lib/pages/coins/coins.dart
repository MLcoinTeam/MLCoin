/*
*  coins.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';

///
class CoinsPage extends StatefulWidget {
  CoinsPage({Key key}) : super(key: key);

  @override
  _CoinsPageState createState() => _CoinsPageState();
}

//
class _CoinsPageState extends State<CoinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 140.0,
            backgroundColor: AppColors.paletteGreyColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              title: Text(
                'Monete',
                style: TextStyle(
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  child: Center(
                    child: AtomText(
                      "Inizia creando la tua prima raccolta di monete con il seguente bottone: ",
                      color: AppColors.paletteGreyColor,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
