import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:shadow_clip/shadow_clip.dart';

Map mapTest = {
  "Color": "preto",
  "Altura": 1.20,
  "Largura": 60.0,
};
Map mapIconTest = {
  "Color": Icons.color_lens,
  "Altura": Icons.height,
  "Largura": Icons.open_in_full_rounded,
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.yellow[700],
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20,
                      bottom: MediaQuery.of(context).size.height * 0.16),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios),
                      Text("Cadeira",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.35),
                          child: ClipShadow(
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-5, -5),
                                spreadRadius: 1,
                                blurRadius: 15,
                              ),
                              BoxShadow(
                                color: const Color(0xff748CAC).withOpacity(0.6),
                                offset: const Offset(5, 5),
                                spreadRadius: 1,
                                blurRadius: 15,
                              )
                            ],
                            clipper: RoundedDiagonalPathClipper(),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.40,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(36),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.08,
                                ),
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 4 / 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: mapTest.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                        ),
                                        Icon(
                                          mapIconTest.values
                                              .toList(growable: true)[index],
                                          size: 50,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          mapTest.values
                                              .toList(growable: true)[index]
                                              .toString(),
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.45,
                          child: ModelViewer(
                            src: 'assets/cadeira.glb',
                            alt: "A 3D model of an astronaut",
                            ar: true,
                            autoRotate: true,
                            cameraControls: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300]!.withOpacity(0.5),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Valor: 45,00',
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue[900],
                            padding: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 13),
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text("Customizar"),
                              Icon(
                                Icons.navigate_next_outlined,
                                size: 40,
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
