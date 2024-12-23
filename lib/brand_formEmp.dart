import 'package:flutter/material.dart';

class InformationForm extends StatefulWidget {
  @override
  _InformationFormState createState() => _InformationFormState();
}

class _InformationFormState extends State<InformationForm> {
  final TextEditingController idController = TextEditingController(text: "GHSK8192");
  final TextEditingController dateTimeController = TextEditingController(text: "23/12/2024 17:05");
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController(text: "2 CHAI THỦY TINH - COCOON\n1 HỘP BÃ MÍA - NONE");

  // Store the selected radio button value
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF97C68A), // Green background for the entire screen
      resizeToAvoidBottomInset: true, // Ensures that the screen layout adjusts when the keyboard is visible
      body: SafeArea(
        child: SingleChildScrollView( // Ensures that the content is scrollable when needed
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title of the form
                Center(
                  child: Text(
                    "INFORMATION FORM",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Cream-colored background section for user inputs
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBF6DF), // Cream color background
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ID and Date/Time row
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: idController,
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: "ID",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller: dateTimeController,
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: "DATE/TIME",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Other fields (Name, Phone, etc.)
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "TÊN",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: "SĐT",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "EMAIL",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: weightController,
                        decoration: InputDecoration(
                          labelText: "KHỐI LƯỢNG QUYÊN GÓP",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // PHÂN LOẠI (Categories)
                      Text(
                        "PHÂN LOẠI",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // GridView for two columns per row, left-aligned
                      GridView.builder(
                        shrinkWrap: true, // To make the GridView work inside a scrollable container
                        physics: NeverScrollableScrollPhysics(), // Disables scrolling for the GridView
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Ensures two columns per row
                          mainAxisSpacing: 16, // Spacing between rows
                          crossAxisSpacing: 16, // Spacing between columns
                          childAspectRatio: 3, // Adjust the height/width ratio of each item
                        ),
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return _buildRadioButton(categories[index]);
                        },
                      ),
                      const SizedBox(height: 16),
                      // MÔ TẢ CHI TIẾT (Description)
                      TextField(
                        controller: descriptionController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          labelText: "MÔ TẢ CHI TIẾT",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Add Button to submit
                      Center(
                        child: ElevatedButton(
                          onPressed: _onSubmit,
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white), // Change text color to white
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Button background color
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            textStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Categories list
  final List<String> categories = [
    "NHỰA",
    "THỦY TINH",
    "CARTON",
    "BÃ MÍA",
    "GIẤY",
    "NHỰA PE",
    "GIẤY POLY",
    "KHÁC",
  ];

  // Method to create radio buttons
  Widget _buildRadioButton(String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: title,
          groupValue: selectedCategory,
          onChanged: (String? value) {
            setState(() {
              selectedCategory = value;
            });
          },
        ),
        Text(title),
      ],
    );
  }

  // Button click handler
  void _onSubmit() {
    // You can add any logic here when the button is clicked
    print('Form Submitted');
  }
}
