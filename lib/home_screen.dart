import 'package:flutter/material.dart';
import 'package:space_app/core/app_colors.dart';
import 'package:space_app/core/app_planets.dart';
import 'package:space_app/core/planets_3d_models.dart';
import 'package:space_app/planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> planets = [
    {
      "name": "Earth",
      "image": AppPlanets.earth,
      "model": Planets3dModels.earth,
      "title": "Earth: Our Blue Marble",
      "about": "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      "distance": "149598026",
      "length of day": "23.93",
      "orbital period": "1",
      "radius": "6371",
      "mass": "5.972 × 10²⁴",
      "gravity": "9.81",
      "surface area": "5.10 × 10⁸",
    },
    {
      "name": "Jupiter",
      "image": AppPlanets.jupiter,
      "model": Planets3dModels.jupiter,
      "title": "Jupiter: The Gas Giant",
      "about": "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      "distance": "778547669",
      "length of day": "9.92",
      "orbital period": "11.86",
      "radius": "69911",
      "mass": "1.898 × 10²⁷",
      "gravity": "24.79",
      "surface area": "6.21 × 10¹⁵",
    },
    {"name": "Mars", "image": AppPlanets.mars, "model": Planets3dModels.mars,
      "title":"Mars: The Red Planet",
      "about": "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      "distance": "227943824",
      "length of day": "24.62",
      "orbital period": "1.88",
      "radius": "3389.5",
      "mass": "6.39 × 10²³",
      "gravity": "3.71",
      "surface area": "1.45 × 10⁸",},
    {
      "name": "Mercury",
      "image": AppPlanets.mercury,
      "model": Planets3dModels.mercury,
      "title": "Mercury: The Closest Planet",
      "about":
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      "distance": "57909227",
      "length of day": "1407.6",
      "orbital period": "0.24",
      "radius": "2439.7",
      "mass": "3.301 × 10²³",
      "gravity": "3.7",
      "surface area": "7.48 × 10⁷",
    },
    {
      "distance": "4498252900",
      "length of day": "16.11",
      "orbital period": "164.8",
      "radius": "24622",
      "mass": "1.024 × 10²⁶",
      "gravity": "11.15",
      "surface area": "7.65 × 10¹⁵",
      "name": "Neptune",
      "image": AppPlanets.neptune,
      "model": Planets3dModels.neptune,
      "title": "Neptune: The Distant World",
      "about": "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    },
    {
      "distance": "1426666422",
      "length of day": "10.66",
      "orbital period": "29.46",
      "radius": "58232",
      "mass": "5.683 × 10²⁶",
      "gravity": "10.44",
      "surface area": "4.27 × 10¹⁵",
      "name": "Saturn",
      "image": AppPlanets.saturn,
      "model": Planets3dModels.saturn,
      "title": "Saturn: The Ringed Planet",
      "about": "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    },
    {
      "distance": "0",
      "length of day": "0",
      "orbital period": "0",
      "radius": "695700",
      "mass": "1.989 × 10³⁰",
      "gravity": "274",
      "surface area": "6.09 × 10¹²",
      "name": "Sun",
      "image": AppPlanets.sun,
      "model": Planets3dModels.sun,
      "title": "The Sun: Our Solar System's Star",
      "about":
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    },
    {
      "distance": "2870990000",
      "length of day": "17.24",
      "orbital period": "84.01",
      "radius": "25362",
      "mass": "8.681 × 10²⁵",
      "gravity": "8.69",
      "surface area": "8.1 × 10¹⁵",
      "name": "Uranus",
      "image": AppPlanets.uranus,
      "model": Planets3dModels.uranus,
      "title": "Uranus: The Tilted Planet",
      "about": "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    },
    {
      "distance": "108209072",
      "length of day": "5832.2",
      "orbital period": "0.62",
      "radius": "6051.8",
      "mass": "4.867 × 10²⁴",
      "gravity": "8.87",
      "surface area": "4.60 × 10⁸",
      "name": "Venus",
      "image": AppPlanets.venus,
      "model": Planets3dModels.venus,
      "title": "Venus: Earth's Toxic Twin",
      "about": "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    },
  ];

  void _goToPage(int page) {
    if (page >= 0 && page < planets.length) {
      _pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
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
                        )),
                    Positioned(
                      top: 24,
                      child: Text(
                        'Explore',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 8,
                      child: Text(
                        'Which planet\nwould you like to explore?',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 16,
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        itemCount: planets.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            planets[index]["image"]!,
                            height: 200,
                            width: 200,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(12),
                              backgroundColor: AppColors.red,
                            ),
                            onPressed: () {
                              _goToPage(_currentPage - 1);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                            )),
                        Text(
                          "${planets[_currentPage]["name"]}",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(12),
                              backgroundColor: AppColors.red,
                            ),
                            onPressed: () {
                              _goToPage(_currentPage + 1);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              color: AppColors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(AppColors.red),
                        foregroundColor:
                        MaterialStateProperty.all(AppColors.white),
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
                            "Explore ${planets[_currentPage]["name"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FloatingActionButton(
                            foregroundColor: AppColors.white,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) =>
                                    PlanetDetailsScreen(
                                      planetName: planets[_currentPage]["name"]!,
                                      planetModelPath: planets[_currentPage]
                                      ["image"]!,
                                      planetTitle: planets[_currentPage]["title"]!,
                                      planetAbout: planets[_currentPage]["about"]!,
                                      distanceFromSun:planets[_currentPage]["distance"]!,
                                      surfaceArea:planets[_currentPage]["surface area"]!,
                                       radius:planets[_currentPage]["radius"]!,
                                      orbitalPeriod:planets[_currentPage]["orbital period"]!,
                                      mass:planets[_currentPage]["mass"]!,
                                      lengthOfDay:planets[_currentPage]["length of day"]!,
                                      gravity:planets[_currentPage]["gravity"]!,
                                    ),
                              ));
                            },
                            backgroundColor: AppColors.red,
                            child: Icon(Icons.arrow_forward),
                            elevation: 0,
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
