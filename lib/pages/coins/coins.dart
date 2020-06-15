/*
*  coins.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
import 'package:flutter/cupertino.dart';

///
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';

///
class CoinsPage extends StatefulWidget {
  @override
  _CoinsPageState createState() => _CoinsPageState();
}

//
class _CoinsPageState extends State<CoinsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.primaryBackground,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: AppColors.paletteGreyColor,
            trailing: InkWell(
              child: Icon(
                Icons.add,
              ),
              onTap: () {},
            ),
            largeTitle: Text(
              'Monete',
              style: TextStyle(
                color: AppColors.primary1,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 200,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    child: Center(
                      child: AtomText(
                        "Inizia creando la tua prima raccolta di monete con il seguente bottone:",
                        color: AppColors.paletteGreyColor,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    padding: kPaddingSettings,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColors.paletteGreyColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          'Crea una raccolta di monete',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
