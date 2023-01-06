import 'package:flutter/material.dart';
import 'package:hos_app/shared/components/components.dart';

class LocationTime extends StatelessWidget {
  const LocationTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'location and time'),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.network(
                  'https://images.unsplash.com/photo-1445205170230-053b83016050?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNsb3RoaW5nJTIwc3RvcmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Image.network(
                  'https://images.unsplash.com/photo-1478860409698-8707f313ee8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  width: double.infinity,
                ),
              ),
              Positioned(
                  child: Icon(
                Icons.person_pin_circle,
                size: 50,
              )),
              Positioned(
                  bottom: 5,
                  right: 5,
                  child: Icon(
                    Icons.zoom_in_map_outlined,
                    size: 50,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
