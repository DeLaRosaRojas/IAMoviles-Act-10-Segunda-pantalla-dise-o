import 'package:flutter/material.dart';

void main() {
  runApp(const ParisinaApp());
}

class ParisinaApp extends StatelessWidget {
  const ParisinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parisina - Vestir',
      home: const VestirScreen(),
    );
  }
}

class VestirScreen extends StatelessWidget {
  const VestirScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // --- APPBAR ---
      appBar: AppBar(
        backgroundColor: const Color(0xFFE30613), // Rojo Parisina
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.network(
            'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-10-Segunda-pantalla-dise-o/refs/heads/main/Logo_Parisina.png',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          // Icono de Usuario con un círculo alrededor
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: IconButton(
              icon: const Icon(Icons.person, color: Colors.white, size: 20),
              onPressed: () {},
            ),
          ),
          // Icono de Menú Hamburguesa
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      
      // --- BODY ---
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título con línea debajo e iconos
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Vestir:',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.checkroom, size: 35, color: Colors.black), // Otro tipo de prenda
                    ],
                  ),
                  // Línea negra debajo del texto
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 3,
                    width: 120,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            // Apartado 1
            const SeccionImagen(
              imageUrl: 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-10-Segunda-pantalla-dise-o/refs/heads/main/banner2.png',
            ),

            // Apartado 2
            const SeccionImagen(
              imageUrl: 'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-10-Segunda-pantalla-dise-o/refs/heads/main/banner3.png',
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),

      // --- FOOTER ---
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/DeLaRosaRojas/IAMoviles-Act-10-Segunda-pantalla-dise-o/refs/heads/main/Logo_Parisina.png',
              height: 20,
            ),
            const SizedBox(width: 10),
            const Text(
              '- 2026 ®',
              style: TextStyle(
                color: Color(0xFFFFFFFF), 
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget de imagen con sombra y borde gris claro
class SeccionImagen extends StatelessWidget {
  final String imageUrl;

  const SeccionImagen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0), // Grisáceo llegando a blanco
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26), // Sombra pequeña (0.1 * 255 = 25.5, rounded to 26)
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0), // Borde pequeño entre imagen y contenedor
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
