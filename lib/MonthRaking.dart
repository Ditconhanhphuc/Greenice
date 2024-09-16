import 'package:flutter/material.dart';

class MonthlyLeaderboardScreen extends StatelessWidget {
  // Sample data representing the leaderboard
  final List<Map<String, dynamic>> leaderboardData = [
    {'rank': 1, 'name': 'Alice', 'score': 1200},
    {'rank': 2, 'name': 'Bob', 'score': 1100},
    {'rank': 3, 'name': 'Charlie', 'score': 950},
    {'rank': 4, 'name': 'David', 'score': 850},
    {'rank': 5, 'name': 'Eve', 'score': 800},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Leaderboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Title Section
            const Text(
              'Top Performers - September 2024',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Leaderboard List
            Expanded(
              child: ListView.builder(
                itemCount: leaderboardData.length,
                itemBuilder: (context, index) {
                  final item = leaderboardData[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                        child: Text(
                          item['rank'].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      title: Text(item['name']),
                      trailing: Text(
                        '${item['score']} pts',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MonthlyLeaderboardScreen(),
  ));
}
