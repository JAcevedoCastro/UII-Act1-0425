import 'package:flutter/material.dart';
import 'package:acevedo0425/pantallas0425/panel0425/widgets0425/itemcelular.dart';

class PanelPantalla0425 extends StatelessWidget {
  const PanelPantalla0425({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff066287),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/144373213?s=400&u=e3a5479e1e693a691ba40ba72c355b7564d71224&v=4")),
          )
        ],
        title: Text('Acevedo Celulares 0425',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff099fe5),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Hola aqui estoy, o lo que usted guste",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.white)),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/JAcevedoCastro/Img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/productos.jpeg"),
            )),
          ),
          ListTile(
            title: Text("Top Celulares"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) Itemcelular()],
            ),
          )
        ],
      ),
    );
    ;
  }
}
