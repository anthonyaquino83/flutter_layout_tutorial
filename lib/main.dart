import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Receita de Cuscuz Piauiense'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFF88E4E),
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'images/cuscuz.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Cuscuz piauiense',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                  fontSize: 30,
                ),
              ),
            ),
            const Text(
              'Um prato feito à base de farinha de milho, arroz ou mandioca. '
              'Salgada e levemente umedecida, a massa é posta a marinar para incorporar o tempero. '
              'Seu cozimento se dá pela infusão no vapor. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: Color(0xFFF88E4E)),
                      const Icon(Icons.star, color: Color(0xFFF88E4E)),
                      const Icon(Icons.star, color: Color(0xFFF88E4E)),
                      const Icon(Icons.star, color: Color(0xFFF88E4E)),
                      Icon(Icons.star, color: Colors.grey.shade300),
                    ],
                  ),
                  const Text(
                    '170 Opiniões',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            DefaultTextStyle.merge(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 16,
                height: 2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailsColumn(
                      icon: Icons.kitchen,
                      description: 'PREPARO:',
                      time: '5 min',
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Color(0xFFF88E4E),
                        ),
                        Text('TEMPO:'),
                        Text('15 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Color(0xFFF88E4E),
                        ),
                        Text('PORÇÕES:'),
                        Text('3-4'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({
    Key? key,
    required this.icon,
    required this.description,
    required this.time,
  }) : super(key: key);

  final String description;
  final IconData icon;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xFFF88E4E),
        ),
        Text(description),
        Text(time),
      ],
    );
  }
}
