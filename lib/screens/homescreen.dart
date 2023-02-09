import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AnimationController animacionInicio; // <---** TODO
  late AnimationController animacionRegistro; // <---** TODO
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.12,
                    ),
                    const Text(
                      'animate_do v3.0.2',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.130,
                    ),
                    MaterialButton(
                      onPressed: () {
                        animacionInicio.reset(); // <---** TODO
                        animacionInicio.forward(); // <---** TODO
                      },
                      color: Colors.white,
                      elevation: 5,
                      child: const Text('Iniciar Sesión'),
                    ),
                    SizedBox(height: size.height * 0.05),
                    const Text('¿No estás registrado aún?'),
                    SizedBox(height: size.height * 0.001),
                    TextButton(
                        onPressed: () {
                          animacionRegistro.reset(); // <---** TODO
                          animacionRegistro.forward(); // <---** TODO
                        },
                        child: const Text('Regístrate aquí'))
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: FadeInUpBig(
                  animate: false,
                  controller: (animacionControl) {
                    animacionInicio = animacionControl; // <---** TODO
                  },
                  child: Container(
                    height: size.height * 0.78,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(155, 118, 118, 118),
                            offset: Offset(-2, -2),
                            blurRadius: 8,
                            spreadRadius: 1,
                          )
                        ]),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.015),
                          Row(
                            children: [
                              MaterialButton(
                                height: 60,
                                shape: const CircleBorder(),
                                onPressed: () {
                                  animacionInicio.reverse(); // <---** TODO
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                },
                                child: const Icon(
                                  Icons.close_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.020),
                          const Text('Iniciar Sesión',
                              style: TextStyle(fontSize: 20)),
                          SizedBox(height: size.height * 0.040),
                          Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 81, 80, 80),
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 118, 118, 118),
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(-1, -1),
                                    blurRadius: 3,
                                    spreadRadius: 3,
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                      maxLines: 1,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'Correo'),
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 18,
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.030),
                          Container(
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 61, 60, 60),
                                    width: 2,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 118, 118),
                                      offset: Offset(1, 1),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      offset: Offset(-1, -1),
                                      blurRadius: 3,
                                      spreadRadius: 3,
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 185,
                                    child: TextFormField(
                                        maxLines: 1,
                                        autocorrect: false,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            hintText: 'Clave'),
                                        style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 18,
                                        )),
                                  ),
                                  SizedBox(
                                      width: 20,
                                      child: IconButton(
                                        splashRadius: 20,
                                        icon: const Icon(
                                            Icons.remove_red_eye_sharp),
                                        onPressed: () {},
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )),
                          SizedBox(height: size.height * 0.040),
                          MaterialButton(
                            color: Colors.black,
                            splashColor: Colors.white,
                            onPressed: () {},
                            child: const Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(height: size.height * 0.030),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 40,
                                color: const Color.fromARGB(155, 61, 60, 60),
                              ),
                              const Text('tambien puedes iniciar con'),
                              Container(
                                height: 1,
                                width: 40,
                                color: const Color.fromARGB(155, 61, 60, 60),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.030),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 61, 60, 60),
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 118, 118, 118),
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(-1, -1),
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  )
                                ]),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('G')),
                            ),
                          ),
                          SizedBox(height: size.height * 0.050),
                          const Text('Al iniciar sesión, aceptas nuestros'),
                          SizedBox(height: size.height * 0.001),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Términos y Condiciones'))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: FadeInUpBig(
                  animate: false,
                  controller: (animacionControl) {
                    animacionRegistro = animacionControl; // <---** TODO
                  },
                  child: Container(
                    height: size.height * 0.78,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(155, 118, 118, 118),
                            offset: Offset(-2, -2),
                            blurRadius: 8,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.015),
                        Row(
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: const CircleBorder(),
                              onPressed: () {
                                animacionRegistro.reverse();
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: const Icon(
                                Icons.close_rounded,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.020),
                        const Text('Nuevo Usuario',
                            style: TextStyle(fontSize: 20)),
                        SizedBox(height: size.height * 0.040),
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 81, 80, 80),
                                width: 2,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 118, 118, 118),
                                  offset: Offset(1, 1),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(-1, -1),
                                  blurRadius: 3,
                                  spreadRadius: 3,
                                )
                              ]),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 200,
                                child: TextFormField(
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        hintText: 'Correo'),
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 18,
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.030),
                        Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 61, 60, 60),
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 118, 118, 118),
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(-1, -1),
                                    blurRadius: 3,
                                    spreadRadius: 3,
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 185,
                                  child: TextFormField(
                                      autocorrect: false,
                                      maxLines: 1,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'Clave'),
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 18,
                                      )),
                                ),
                                SizedBox(
                                    width: 20,
                                    child: IconButton(
                                      splashRadius: 20,
                                      icon: const Icon(
                                          Icons.remove_red_eye_sharp),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )),
                        SizedBox(height: size.height * 0.040),
                        MaterialButton(
                          color: Colors.black,
                          splashColor: Colors.white,
                          onPressed: () {},
                          child: const Text(
                            'Registrar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: size.height * 0.030),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 40,
                              color: const Color.fromARGB(155, 61, 60, 60),
                            ),
                            const Text('tambien puedes iniciar con'),
                            Container(
                              height: 1,
                              width: 40,
                              color: const Color.fromARGB(155, 61, 60, 60),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.030),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 61, 60, 60),
                                width: 2,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 118, 118, 118),
                                  offset: Offset(1, 1),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                ),
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(-1, -1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('G')),
                          ),
                        ),
                        SizedBox(height: size.height * 0.050),
                        const Text('Si te registras, aceptas nuestros'),
                        SizedBox(height: size.height * 0.001),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Términos y Condiciones'))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
