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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etec Adolpho Berezin - PAM1'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),

      ),

      drawer: Drawer(
      child: const Center(
      child: Text("Menu"),
      ),
      backgroundColor: const Color.fromARGB(255, 153, 142, 142),  
      ),

      endDrawer: Drawer(
      child: const Center(
      child: Text("Configurações"),
      ),
      backgroundColor: const Color.fromARGB(255, 117, 109, 109),
      ),
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
          print('Botão Flutuante Pressionado');
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
  Widget _buildContactItem(IconData icone, String texto){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(icone, color: Colors.redAccent, size: 20),
          const SizedBox(width: 15),
          Text(texto, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}