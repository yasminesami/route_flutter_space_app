import 'package:flutter/material.dart';
import 'package:space_app/home_screen.dart';
import 'core/app_colors.dart';
import 'core/app_planets.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final String planetName;
  final String planetModelPath;
  final String planetTitle;
  final String planetAbout;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  PlanetDetailsScreen(
      {required this.planetName,
      required this.planetModelPath,
      required this.planetTitle,
      required this.planetAbout,
      required this.distanceFromSun,
      required this.gravity,
      required this.lengthOfDay,
      required this.mass,
      required this.orbitalPeriod,
      required this.radius,
      required this.surfaceArea});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(1.0),
                            ],
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.darken,
                        child: Image.asset(
                          AppPlanets.screenAppbar,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .22,
                        )),
                    Positioned(
                      top: 24,
                      left: 0,
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(8),
                                backgroundColor: AppColors.red,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                );
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: AppColors.white,
                              )),
                          SizedBox(width: 64,),
                          Text(
                            planetName,
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 8,
                      child: Text(
                        planetTitle,
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          planetModelPath,
                          height: 250,
                          width: 250,
                        ),
                      ),
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      planetAbout,
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 16,
                          color: AppColors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Distance from Sun (km) : $distanceFromSun",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Length of Day (hours) : $lengthOfDay",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Orbital Period (Earth years) : $orbitalPeriod",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Radius (km) : $radius",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Mass (kg) : $mass",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Gravity (m/s²) : $gravity",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Surface Area (km²) : $surfaceArea",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                )
              ])),
        ));
  }
}
