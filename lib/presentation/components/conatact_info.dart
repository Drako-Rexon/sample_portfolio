import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: Center(
        child: Container(
          width: 970,
          height: 1100,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: Contact form
              Expanded(
                child: buildContactForm(),
              ),

              const SizedBox(width: 20), // Spacer between form and info section

              // Right side: Contact information
              Expanded(
                child: buildContactInfo(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Contact Form
  Widget buildContactForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Leave Us Your Info",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        buildTextField("Your Full Name ( Required )"),
        const SizedBox(height: 20),
        buildTextField("Your Email ( Required )"),
        const SizedBox(height: 20),
        buildTextField("Subject"),
        const SizedBox(height: 20),
        buildMessageField("Your Message"),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
          ),
          child: const Text("SEND MESSAGE"),
        ),
      ],
    );
  }

  // Reusable text field widget
  Widget buildTextField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

  // Reusable message field widget
  Widget buildMessageField(String label) {
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

  // Contact Information Section
  Widget buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section 1: Location
        buildContactSection(
          icon: Icons.location_on,
          details: [
            buildContactDetail('Country:', 'Bangladesh'),
            buildContactDetail('City:', 'Dhaka'),
            buildContactDetail('Street:', '35 Vhatara, Badda'),
          ],
        ),
        const SizedBox(height: 20),

        // Section 2: Communication
        buildContactSection(
          icon: Icons.email,
          details: [
            buildContactDetail('Email:', 'Youremail@gmail.com'),
            buildContactDetail('Skype:', '@Yourusername'),
            buildContactDetail('Telegram:', '@Yourusername'),
          ],
        ),
        const SizedBox(height: 20),

        // Section 3: Phone numbers
        buildContactSection(
          icon: Icons.phone,
          details: [
            buildContactDetail('Support Services:', '15369'),
            buildContactDetail('Office:', '+58 (021) 356 587 235'),
            buildContactDetail('Personal:', '+58 (021) 356 587 235'),
          ],
        ),
      ],
    );
  }

  // Helper widget for contact sections (Icon + details)
  Widget buildContactSection({
    required IconData icon,
    required List<Widget> details,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 25,
          child: Icon(icon, color: Colors.black, size: 30),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details,
        ),
      ],
    );
  }

  // Helper widget for each contact detail
  Widget buildContactDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 5),
          Text(value),
        ],
      ),
    );
  }
}
