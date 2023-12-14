import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFPI App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Remover o texto "Debug"
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/main': (context) => MainScreen(),
        '/contacts': (context) => ContactsScreen(),
        '/fuel': (context) => FuelScreen(),
        '/extra1': (context) => ExtraOneScreen(),
        '/extra2': (context) => ExtraTwoScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox.shrink(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/ifpi_logo.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Reduzindo o espaçamento entre os campos
                SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      primary: Colors.yellow,
                    ),
                    child: Text('Entrar'),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Implementar a navegação para a tela de cadastro de conta
                  },
                  child: Text('Cadastrar conta'),
                ),
                TextButton(
                  onPressed: () {
                    // Implementar a navegação para a tela de recuperação de senha
                  },
                  child: Text('Recuperar senha'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Contatos'),
        backgroundColor: Colors.yellow, // Defina a cor desejada para a AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // Espaçamento lateral
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/ifpi_logo.png', // Caminho da imagem do IFPI
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contacts');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.yellow,
                      ),
                      child: Text('Contatos'),
                    ),
                  ),
                  SizedBox(width: 20), // Espaçamento horizontal
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fuel');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.yellow,
                      ),
                      child: Text('Abastecer'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento vertical
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/extra1');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.yellow,
                      ),
                      child: Text('Extra 1'),
                    ),
                  ),
                  SizedBox(width: 20), // Espaçamento horizontal
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/extra2');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.yellow,
                      ),
                      child: Text('Extra 2'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento inferior
          ],
        ),
      ),
    );
  }
}

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  bool _showContacts = false;

  final List<String> _contactNames = [
    'Camila',
    'Ana Carla',
    'Lucas',
    'Maria',
    'João',
    // Adicione mais nomes conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
        backgroundColor: Colors.blue, // Altere para a cor desejada
      ),
      body: Center(
        child: _showContacts
            ? _buildContactsList()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ifpi_logo.png', // Caminho do símbolo do IFPI
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200, // Definindo a largura do botão
                    height: 50, // Definindo a altura do botão
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showContacts = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Borda quadrada
                        ),
                        primary: Colors.blue, // Cor amarela
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconTheme(
                            data: IconThemeData(color: Colors.black), // Altere para a cor desejada
                            child: Icon(Icons.contacts), // Ícone de contatos
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Listar Contatos',
                            style: TextStyle(color: Colors.white), // Altere para a cor desejada
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

  Widget _buildContactsList() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: _contactNames.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_contactNames[index]), // Nome da pessoa
          subtitle: Text(
            '(86) 98803-898${(index + 1).toString().padLeft(2, '0')}',
          ),
          leading: CircleAvatar(
            child: Text(_contactNames[index][0]), // Primeira letra do nome
          ),
          onTap: () {
            // Lógica para lidar com o clique em um contato específico
          },
        );
      },
    );
  }
}

class FuelScreen extends StatefulWidget {
  const FuelScreen({super.key});
  @override
  _FuelScreenState createState() => _FuelScreenState();
}

class _FuelScreenState extends State<FuelScreen> {
  final TextEditingController _textEditingControllerGasoli = TextEditingController();
  final TextEditingController _textEditingControllerAlcool = TextEditingController();

  var resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gasolina x Alcool"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'Gasoli vs Alcool',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              Image.asset(
                'assets/bomba.png',
                height: 120,
                width: 120,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor da gasolina',
                ),
                controller: _textEditingControllerGasoli,
                onSubmitted: (String valor) {
                  print('Valor' + _textEditingControllerGasoli.text);
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor do álcool',
                ),
                controller: _textEditingControllerAlcool,
                onSubmitted: (String valor) {
                  print('Valor' + _textEditingControllerAlcool.text);
                },
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Bordas quadradas
                  ),
                  primary: Colors.blue, // Cor de fundo desejada
                ),
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white), // Altera a cor do texto para branco
                ),
                onPressed: () {
                  setState(() {
                    resultado = double.parse(_textEditingControllerAlcool.text) /
                        double.parse(_textEditingControllerGasoli.text) *
                        100;
                    print('Calcular' + resultado.toString());
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("Resultado: $resultado"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExtraOneScreen extends StatelessWidget {
  const ExtraOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/ifpi_logo.png', // Caminho da imagem do IFPI
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Text('Página Extra 1'),
          ],
        ),
      ),
    );
  }
}

class ExtraTwoScreen extends StatelessWidget {
  const ExtraTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/foto_camila.jpg'), // Caminho da sua foto
            ),
            SizedBox(height: 20),
            Text('Camila Matos'),
          ],
        ),
      ),
    );
  }
}