import 'package:flutter/material.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});
  @override
  State<Marketplace> createState() => _Market();
}

class _Market extends State<Marketplace> {
  static const cardImage = AssetImage('lib/image/casas.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return const IconButton(
              icon: Icon(Icons.close, size: 45),
              onPressed: null,
            );
          },
        ),
        title: const Center(
          child: 
          Text('1499 Galenia Road',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_up, size: 45),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down, size: 45),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 260.0,
                  child: Ink.image(
                    image: cardImage,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text('\$599,000', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black,),
                  ),
                  subtitle: const Text('1499 Galenia Rd, Austin, TX', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.ios_share, color: Colors.black,),
                        onPressed: () {
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border, color: Colors.black,),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("4", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        Text('Beds', style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3+", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        Text('Baths', style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4,203", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        Text('Sq. ft', style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("8,843", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        Text('Lot Sq. ft', style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
              child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.approval_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text("View MaP", style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.directions_car_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text("10 minutes away", style: TextStyle(fontSize: 18, color: Colors.blue)),
            ],
          )),
          const SizedBox(height: 8),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Open Houses", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Friday 1:00 pm - 4:00 pm",style: TextStyle(fontSize: 18)
                    ),
                    SizedBox(width: 125),
                    Text("2/24"),
                    SizedBox(width: 0),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Saturday 1:00 pm - 4:00 pm",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 103),
                    Text("2/25"),
                    SizedBox(width: 0),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  height: 85,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'Contact Agent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
