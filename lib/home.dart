import 'package:flutter/material.dart';
import 'video_screen.dart'; // Importe a nova tela

class MenuGridScreen extends StatelessWidget {
  const MenuGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      backgroundColor: Colors.grey[300], // Fundo da tela cinza claro
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Card do vídeo
            Card(
              clipBehavior: Clip.antiAlias,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoScreen(videoId: 'lERneUjc5KI'), // Exemplo de ID do vídeo
                    ),
                  );
                },
                child: Container(
                  color: Colors.grey[800],
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(Icons.play_circle_fill, size: 48.0, color: Colors.white),
                        const SizedBox(height: 8.0),
                        Text(
                          'Assistir Vídeo',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Informações',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 8.0 / 9.0,
              children: List.generate(10, (int index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: 'Imagem $index',
                      );
                    },
                    child: Container(
                      color: Colors.grey[800],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 18.0 / 11.0,
                            child: Image.asset(
                              'assets/imagem${index + 1}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Imagem ${index + 1}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  'Descrição breve',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
