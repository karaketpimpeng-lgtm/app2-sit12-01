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
        title: Text(
          'หน้าแรก',
          style: TextStyle(
          color: Colors.pinkAccent, //สีอักษร
          backgroundColor: Colors.amber, //สีพื้นหลัง
          fontSize: 32, //ขนาดอักษร
          fontWeight: FontWeight.w800, //ความหนาอักษร),
        ),
        ),
        leading: Text("Leading"),
        actions: [
          Icon(
            Icons.menu, //ชื่อไอคอน
            size: 60, //ขนาด
            color: Colors.blue, //สี
          ),
          Icon(Icons.person)
        ],
      ),
      body: Column(
        children: [
          Text("Hello"),
          Row( //แถวแนวนอน
            children: [
              //ดึงภาพจากลิงก์
              Image.network("https://i.pinimg.com/736x/73/2d/c5/732dc53124da4a188a184d46c00280eb.jpg"
                ,width: 200, //กว้าง
                height: 200, //สูง
                fit: BoxFit.cover,
              ),
              ClipOval(
                child: Image.asset("assets/puppy.jpg",
                  width: 200, //กว้าง
                  height: 200, //สูง
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded( //ขยาย
                  child: ElevatedButton(
                      onPressed: () => {}, child: Text("ปุ่ม"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen.shade600,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8)
                        )
                      ),
                  )
              ),
              SizedBox(
                width: 20,
                height: 100,
              ),
              Expanded(
                  child: OutlinedButton(
                      onPressed: () => {},
                      child: Text("ปุ่ม"),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blue.shade300
                  ),
                  )
              )
            ],
          )
        ],
      )
    );
  }
}