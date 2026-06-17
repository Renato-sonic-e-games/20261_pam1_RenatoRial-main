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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   Widget _buildContactItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 60, 
              backgroundColor: Colors.redAccent, 

              child: CircleAvatar(
                radius: 56, 

                backgroundImage: NetworkImage(
                  'https://github.com/Renato-sonic-e-games.png',
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Renato Rial Gonçalves',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              '16 anos, Mongaguá - SP',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            _buildContactItem(
              Icons.email,
              'aluno@etec.sp.gov.br',
            ),

            _buildContactItem(
              Icons.phone,
              '(67) 71111-7799',
            ),

            _buildContactItem(
              Icons.web,
              '@renatorial',
            ),

            const Divider(),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resumo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Aluno do curso de Desenvolvimento de Sistemas.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Objetivo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Busco uma oportunidade na área de desenvolvimento de software, onde possa aplicar meus conhecimentos e contribuir para o crescimento da empresa.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
      ),
    );
  }
}