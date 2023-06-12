import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyActivity(),
    );
  }
}

class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

  @override
  Widget build(BuildContext context) {

    SnackMessage(message, context) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 20),
              child: Container(
                child: Text(
                  'Welcome to My Photo Gallery!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 22, 22),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    SnackMessage('Photo Clicked',context);
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4E03AQEAuu-4Q1tIXg/profile-displayphoto-shrink_800_800/0/1666971525105?e=2147483647&v=beta&t=iTnq5mOh57iRphKdFUy1sAlMFdvzYAgDlY0cjqJyzGw",
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text('Sample Image 1'),
                  subtitle: Text(' Category 1'),
                  leading: Icon(Icons.image),
                ),
                ListTile(
                  title: Text('Sample Image 2'),
                  subtitle: Text(' Category 2'),
                  leading: Icon(Icons.image),
                ),
                ListTile(
                  title: Text('Sample Image 3'),
                  subtitle: Text(' Category 3'),
                  leading: Icon(Icons.image),
                )
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){SnackMessage('Upload Successful', context);},
        child: Icon(Icons.upload),
      ),
    );
  }
}
