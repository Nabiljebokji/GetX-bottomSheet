import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("${Get.isBottomSheetOpen}");
                          },
                          child: Text("Check if bottomsheet open"),
                        ),
                        Text("this is the BottomSheet"),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.blue[100],
                  enterBottomSheetDuration: Duration(milliseconds: 10),
                  exitBottomSheetDuration: Duration(seconds: 1),
                  isDismissible:
                      true, //we can close it by clicking on the screen
                );
              },
              child: Text("Bottom Sheet message"),
            ),
            ElevatedButton(
              onPressed: () {
                print("${Get.isBottomSheetOpen}");
              },
              child: Text("Check if bottomsheet open"),
            ),
          ],
        ),
      ),
    );
  }
}
