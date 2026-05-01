import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Configuración inicial de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ContadorPage(),
    );
  }
}

// Widget con estado para la pantalla principal
class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  // Variable para almacenar el valor actual del contador
  int _contador = 0;

  // Método para incrementar el contador
  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  // Método para decrementar el contador
  void _decrementar() {
    setState(() {
      // Validar que el contador no baje de 0
      if (_contador > 0) {
        _contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador con setState')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has presionado el botón:',
              style: TextStyle(fontSize: 20),
            ),
            // Valor actual del contador en texto grande
            Text(
              '$_contador',
              style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      // Contenedor de botones flotantes para el incremento y decremento
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementar,
            tooltip: 'Decrementar',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            onPressed: _incrementar,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
