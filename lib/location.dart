import 'package:flutter/material.dart';
import 'package:my_flutter_app/location_detail_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class LocationListScreen extends StatelessWidget {
  final List<LocationData> locations = [
    LocationData(
      imagePath: 'assets/locaMain.png', // Ensure the image path is correct
      name: 'Trạm Xanh Bình Thạnh',
      address: '345 Điện Biên Phủ, phường 8, Quận Bình Thạnh, TPHCM',
      phone: '09086725312',
      email: 'ghfu@gmail.com',
    ),
    // Add more locations if needed
  ];

  LocationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom "AppBar" section
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), // Bottom-left corner rounded
              bottomRight: Radius.circular(20), // Bottom-right corner rounded
            ),
            child: Container(
              height: 120, // Custom height for the "AppBar"
              color:
                  const Color(0xFF7CB98D), // Background color of the "AppBar"
              padding: const EdgeInsets.only(
                  top: 40, left: 10, right: 10), // Padding for the "AppBar"
              child: Row(
                children: [
                  Image.asset(
                    'assets/topIcon2.png', // Your icon image
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Võ Nguyên Giáp, Phường Hiệp Phú, Quận 9', // Address text
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Main content (location list)
          Expanded(
            child: ListView.builder(
              itemCount: locations.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: LocationDetailPage(
                        title: locations[index].name,
                      ),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: LocationCard(
                      location: locations[index]), // Card for each location
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// LocationData model class to hold location details
class LocationData {
  final String imagePath;
  final String name;
  final String address;
  final String phone;
  final String email;

  LocationData({
    required this.imagePath,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
  });
}

// LocationCard widget to display each location
class LocationCard extends StatelessWidget {
  final LocationData location;

  const LocationCard({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 0), // Add padding at the bottom only
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section for location
            SizedBox(
              width: 120, // Set the width of the image container
              height: 140, // Ensure the height matches the card height
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset(
                  location.imagePath,
                  fit: BoxFit
                      .cover, // This will ensure the image covers the entire container area
                ),
              ),
            ),
            const SizedBox(width: 10),
            // Text section for location details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Location name
                    Text(
                      location.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      overflow: TextOverflow.ellipsis, // Prevent text overflow
                    ),
                    const SizedBox(height: 10),
                    // Address row
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 18),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.address,
                            style: const TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis, // Prevent overflow
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    // Phone row
                    Row(
                      children: [
                        const Icon(Icons.phone, size: 18),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.phone,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    // Email row
                    Row(
                      children: [
                        const Icon(Icons.email, size: 18),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.email,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
