import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void drawXO(){
    
  }
  var grid = [
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
  ];

  void reset(){
     grid = [
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
    '_',
  ];

  setState(() {
    
  });
  }
  var current = 'X';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Tic Tac Toe")),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 90),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: grid.length,
                          itemBuilder: (context, index) => Material(
                            color: Colors.amber,
                            child: InkWell(
                              splashColor: Colors.amber.withOpacity(0.1),
                              onTap: (){
                                  
                                     if(grid[index] == '_')
                                     {
                                      setState(() {
                                  grid[index] = current;
                                   current = current == 'X' ? '0':'X';
                                  });
                                     }
                                  
                              },
                                child: Center(
                                    child: Text(
                              grid[index],
                              style: const TextStyle(fontSize: 40),
                            ))),
                          ),
                                  ),
                      ),
                      const SizedBox(height: 15,),

                       ElevatedButton.icon(onPressed: reset, icon: const Icon(Icons.refresh),label: const Text("Play Again"),)
          ],
        ),
        
           
                
        
      ),
    );
  }
}
