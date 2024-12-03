import 'package:complete_e_commerce/data/dataSource/static.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  onBoardingList[index].title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 70),
                Image.asset(onBoardingList[index].image,
                    height: 250, width: 200, fit: BoxFit.fill),
                SizedBox(height: 70),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[index].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 2,
                    ),
                  ),
                )
              ],
            );
          }),
    ));
  }
}
