import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _NameState();
}

class _NameState extends State<MyApp> {
  String imgPath = 'assets/images/ayonokoji.jpg';
  String namePerson = 'Kiyotaka Ayonokoji';

  void handleChangeImage(String image, String name) {
    setState(() => imgPath = image);
    setState(() => namePerson = name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selecione o personagem de Classroom of elite',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.expand,
        children: [
          Container(),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'https://i.pinimg.com/originals/6c/9d/66/6c9d6622449c1fb7d75323a5e18b1768.png',
                          'Kikyō Kushida '),
                      child: Image.network(
                        'https://i.pinimg.com/originals/6c/9d/66/6c9d6622449c1fb7d75323a5e18b1768.png',
                        width: 100,
                      )),
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'https://preview.redd.it/0mk136kcs7x41.png?width=640&crop=smart&auto=webp&s=323d4155c35b5c24c44db177d92770ebaaeafe7c',
                          'Airi Sakura'),
                      child: Image.network(
                        'https://preview.redd.it/0mk136kcs7x41.png?width=640&crop=smart&auto=webp&s=323d4155c35b5c24c44db177d92770ebaaeafe7c',
                        width: 100,
                      )),
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'https://i.pinimg.com/originals/03/f5/b0/03f5b0942b9c16376db4e7667db62ac2.png',
                          'Suzune Horikita'),
                      child: Image.network(
                        'https://i.pinimg.com/originals/03/f5/b0/03f5b0942b9c16376db4e7667db62ac2.png',
                        width: 100,
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'https://i.pinimg.com/originals/f2/a3/01/f2a301f99655fcaaab2d20a1c9dadbfc.jpg',
                          'Kakeru Ryūen '),
                      child: Image.network(
                        'https://i.pinimg.com/originals/f2/a3/01/f2a301f99655fcaaab2d20a1c9dadbfc.jpg',
                        width: 100,
                      )),
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'assets/images/ayonokoji.jpg', 'Kiyotaka Ayonokoji'),
                      child: Image.asset(
                        'assets/images/ayonokoji.jpg',
                        width: 100,
                      )),
                  GestureDetector(
                      onTap: () => handleChangeImage(
                          'https://i.pinimg.com/564x/96/30/24/963024983c917c172307af87a6299e74.jpg',
                          'Rokusuke Kōenji'),
                      child: Image.network(
                        'https://i.pinimg.com/564x/96/30/24/963024983c917c172307af87a6299e74.jpg',
                        width: 100,
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 260,
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 340,
                          height: 360,
                          alignment: Alignment.center,
                          child: !imgPath.contains('https')
                              ? Image.asset(
                                  imgPath,
                                  fit: BoxFit.cover,
                                )
                              : Image.network(imgPath, fit: BoxFit.cover)),
                      Text(
                        namePerson.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ])
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
