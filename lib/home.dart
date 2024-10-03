import 'package:flutter/material.dart';
import 'package:lat_kuis_124220002/dummy_data.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            // Navigate to LoginPage and replace current page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 145, 237),
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Home',
            textAlign: TextAlign.center,
          ),
        ),
        body: SizedBox(
            height: 600,
            width: 500,
            child: Card(
              color: const Color.fromARGB(255, 190, 192, 197),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.7),
                itemCount: vehicleList.length,
                itemBuilder: (BuildContext context, int index) {
                  final Vehicle place = vehicleList[index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          place.imageUrls[1],
                          width: 150,
                          height: 100,
                        ),
                        Text(
                          vehicleList[index].name,
                        ),
                        Text(vehicleList[index].type),
                        Text(vehicleList[index].engine),
                        Text(vehicleList[index].fuelType),
                        Text(vehicleList[index].description),
                        Text(vehicleList[index].price),
                      ],
                    ),
                  );
                },
              ),
            )));
  }
}
