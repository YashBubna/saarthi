import 'package:flutter/material.dart';

class PoliceScreen extends StatelessWidget {
  const PoliceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Police Services'),
        backgroundColor: Colors.teal[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Police Section
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Police',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900]),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.location_on,
                          color: Colors.white, size: 18),
                      label: const Text('Nearest Police Station',
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.call, color: Colors.white, size: 18),
                      label: const Text('Call',
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.directions,
                          color: Colors.white, size: 18),
                      label: const Text('Directions',
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Report Section
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Report',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900]),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.report,
                              color: Colors.white, size: 18),
                          label: const Text('Report Incident',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[700],
                            minimumSize: const Size(160, 40),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.find_in_page,
                              color: Colors.white, size: 18),
                          label: const Text('E-lost Report',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[700],
                            minimumSize: const Size(160, 40),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Details Section
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900]),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text('Police Stations',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text('Emergency Contacts',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Search Section
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.teal, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900]),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text('Challan',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text('Stolen Vehicle',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text('Missing Person',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
