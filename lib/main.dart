import 'package:flutter/cupertino.dart';

void main() => runApp(SafeAreaCupertino());

class SafeAreaCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter SafeArea Cupertino',
      home: SafeAreaPage(),
      color: CupertinoColors.white,
      debugShowCheckedModeBanner: false,
    );
  }
}

class SafeAreaPage extends StatelessWidget {
  const SafeAreaPage() : super();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        middle: Text(
          'SafeArea Test Page',
        ),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: CupertinoColors.white,
                child: Center(
                  child: Text(
                    'Container()',
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
