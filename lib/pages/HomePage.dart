import 'package:flutter/material.dart';
import 'package:tshopkz/components/bottom_nav_bar.dart';
import 'package:tshopkz/pages/cart_page.dart';
import 'package:tshopkz/pages/shop_page.dart';
class HomePage extends StatefulWidget{
const HomePage({super.key});

@override
State <HomePage> createState() =>_HomePageState();



}
class _HomePageState extends State<HomePage>{

int _selectedIndex =0;

void navigatieBottomBar(int index){
  setState(() {
    _selectedIndex = index;
  });
}
final List<Widget> _pages = [
  const ShopPage(),

  const CartPage(),
];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MybottomNavBar(
        onTabChange:(index) =>navigatieBottomBar(index) ,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(icon: Icon(Icons.menu,
            color: Colors.black,
            ),
                  onPressed: () {
            Scaffold.of(context).openDrawer();
                  },
                  );
          }
        ),),
        
      drawer: Drawer(backgroundColor: Colors.grey[900] ,
      child: Column(children: [
        DrawerHeader(child: Image.asset('lib/images/logo.png',color: Colors.white,))
     , Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25.0),
       child: Divider(color: Colors.grey[800],),
     ),
  const   Padding(
       padding: const EdgeInsets.only(left:  25.0),
       child: ListTile(
        leading: Icon(Icons.home),
        title: Text('Home',
        style: TextStyle(color: Colors.white),),

       ),
     ),
      const   Padding(
       padding: const EdgeInsets.only(left:  25.0),
       child: ListTile(
        leading: Icon(Icons.info),
        title: Text('About',
        style: TextStyle(color: Colors.white),),

       ),
     ),
     const   Padding(
       padding: const EdgeInsets.only(left:  25.0),
       child: ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout',
        style: TextStyle(color: Colors.white),),

       ),
     )

      ],),),
      body: _pages[_selectedIndex],
    );
  }
}


