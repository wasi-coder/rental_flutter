import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Row(
          children: <Widget>[
            NavigationRail(
              indicatorColor: Colors.green,
              selectedIndex: _selectedIndex,
              groupAlignment: -1.0,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: const<NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_outlined),
                  selectedIcon:Icon(Icons.favorite_border_outlined) 
                , label: Text('PAGE 1 '),
                ),

                NavigationRailDestination(
                  icon: Icon(Icons.favorite_outlined),
                  selectedIcon:Icon(Icons.favorite_border_outlined) 
                , label: Text('PAGE 2 '),
                ),

                NavigationRailDestination(
                  icon: Icon(Icons.favorite_outlined),
                  selectedIcon:Icon(Icons.favorite_border_outlined) 
                , label: Text('PAGE 3 '),
                ),

              ],
              
              ),
              const VerticalDivider(thickness: 1, width: 1,color: Colors.green,),
              Expanded(
              child: Center(
                child: Text(
                  'Selected Page: $_selectedIndex',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
               
          ],
        )),
     
    );
  }
}
