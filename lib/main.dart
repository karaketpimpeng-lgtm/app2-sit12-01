import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasaz_xdpro'),
        actions: [Icon(Icons.menu,
          size: 30,)
        ],
      ),
      body: Column(
        children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            ClipOval(
              child: Image.asset("assets/me.jpg"
                ,width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Column(
              children: [
                Text('24',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('โพสต์',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                )
              ],
            ),
            SizedBox(
              width: 52,
            ),
            Column(
              children: [
                Text('100.M',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('ผู้ติดตาม',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 43,
            ),
            Column(
              children: [
                Text('0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('กำลังติดตาม',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('น.ส.การะเกด พิมแพง',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('แผนกเทคโนโลยีสารสนเทศ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('อยากลาออก',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(child: SizedBox(
                width: 20,
                  child: ElevatedButton(onPressed: () => {},
                  child: Text('ติดตาม'),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen.shade600,
                foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8))
                ),
                )
              )
                ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  width: 20,
                  child: OutlinedButton(onPressed: () => {},
                  child: Text('ติดตาม'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.pink.shade300,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8))
                ),
              )
              )
              ),
              const SizedBox(width: 8,)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 95,
              ),
              Icon(
                Icons.grid_on,
                size: 25,
                color: Colors.pink.shade500,
              ),
              SizedBox(
                width: 180,
              ),
              Icon(
                  Icons.person_pin,
                size: 25,
                color: Colors.pink.shade500,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 4,
              ),
              Image.network("https://s359.kapook.com/pagebuilder/87ab33ae-8dca-487d-ac86-779086de65e0.jpg"
                ,width: 135,
              height: 135,
              fit: BoxFit.cover,),
                  Image.network("https://images.dmc.tv/wallpaper/raw/13809.jpg"
                    ,width: 135,
                    height: 135,
                    fit: BoxFit.cover,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlMxg-Gj98yhuLTNSZLG1sa89AaHM3lQvESwY5GPHnAw&s=10"
                ,width: 135,
                height: 135,
                fit: BoxFit.cover,),
            ],
          ),
        ],
        ),
    );
  }
}