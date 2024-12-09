import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom "AppBar" section
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), // Bottom-left corner rounded
              bottomRight: Radius.circular(20), // Bottom-right corner rounded
            ),
            child: Container(
              height: 120, // Custom height for the "AppBar"
              color: Color(0xFF7CB98D), // Background color of the "AppBar"
              padding: EdgeInsets.only(top: 40, left: 10, right: 10), // Padding for the "AppBar"
              child: Row(
                children: [
                  Image.asset(
                    'assets/topIcon2.png', // Your icon image
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
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
                    Navigator.pushNamed(
                      context,
                      '/locationDetail', // Route to location details page
                      arguments: locations[index], // Passing location data to detail screen
                    );
                  },
                  child: LocationCard(location: locations[index]), // Card for each location
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

  const LocationCard({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0), // Add padding at the bottom only
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section for location
            Container(
              width: 120, // Set the width of the image container
              height: 140, // Ensure the height matches the card height
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset(
                  location.imagePath,
                  fit: BoxFit.cover, // This will ensure the image covers the entire container area
                ),
              ),
            ),
            SizedBox(width: 10),
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      overflow: TextOverflow.ellipsis, // Prevent text overflow
                    ),
                    SizedBox(height: 10),
                    // Address row
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 18),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.address,
                            style: TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis, // Prevent overflow
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Phone row
                    Row(
                      children: [
                        Icon(Icons.phone, size: 18),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.phone,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    // Email row
                    Row(
                      children: [
                        Icon(Icons.email, size: 18),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            location.email,
                            style: TextStyle(fontSize: 14),
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
