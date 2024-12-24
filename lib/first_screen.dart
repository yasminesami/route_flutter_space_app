import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/core/app_planets.dart';
import 'package:space_app/home_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Image.asset(AppPlanets.firstScreenFrame)),
          Text(
            'Explore\nThe\nUniverse ',
            style: TextStyle(
                fontSize: 48,
                color: AppColors.white,
                fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.red),
                  foregroundColor: MaterialStateProperty.all(AppColors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    FloatingActionButton(
                      foregroundColor: AppColors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      backgroundColor: AppColors.red,
                      child: Icon(Icons.arrow_forward),
                      elevation: 0,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
