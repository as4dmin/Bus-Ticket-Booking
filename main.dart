import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Ticket Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TicketBookingScreen(),
    );
  }
}

class TicketBookingScreen extends StatefulWidget {
  const TicketBookingScreen({Key? key}) : super(key: key);

  @override
  _TicketBookingScreenState createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  final TextEditingController departureController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  final TextEditingController seatsController = TextEditingController();

  double farePerSeat = 50.0; // Example fare per seat

  String? resultMessage;

  // Function to calculate fare
  void calculateFare() {
    if (departureController.text.isEmpty ||
        destinationController.text.isEmpty ||
        seatsController.text.isEmpty) {
      setState(() {
        resultMessage = 'Please fill in all the fields.';
      });
      return;
    }

    int numSeats = int.tryParse(seatsController.text) ?? 0;

    if (numSeats <= 0) {
      setState(() {
        resultMessage = 'Please enter a valid number of seats.';
      });
      return;
    }

    double totalFare = farePerSeat * numSeats;
    setState(() {
      resultMessage =
          'Total Fare from ${departureController.text} to ${destinationController.text}: \$${totalFare.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Ticket Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Departure and Destination Locations:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: departureController,
              decoration: const InputDecoration(
                labelText: 'Departure Location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(
                labelText: 'Destination Location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter the Number of Seats:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: seatsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number of Seats',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateFare,
              child: const Text('Calculate Fare'),
            ),
            const SizedBox(height: 20),
            if (resultMessage != null)
              Text(
                resultMessage!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: resultMessage!.contains('Please') ? Colors.red : Colors.green,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
