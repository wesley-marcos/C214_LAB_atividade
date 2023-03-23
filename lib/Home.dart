import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  get initialValue => null;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
        child: ListView(
          children: [

            const SizedBox(
              width: 20,
              height: 200,
            ),

            Container(
              alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: GoogleFonts.aladin(
                    fontSize: 80,
                    color: Colors.amber
                ),
              ),
            ),

            const SizedBox(
              width: 20,
              height: 20,
            ),

            Container(
              alignment: Alignment.center,
              child: Text(
                "Dependencies",
                style: GoogleFonts.aladin(
                    fontSize: 65,
                    color: Colors.amber
                ),
              ),
            ),

            const SizedBox(
              width: 20,
              height: 20,
            ),

            Container(
              alignment: Alignment.topRight,
              child: Text(
                "C214 - L2",
                style: GoogleFonts.aladin(
                    fontSize: 25,
                    color: Colors.amber
                ),
              ),
            ),

            const SizedBox(
              width: 20,
              height: 80,
            ),

            Container(
              alignment: Alignment.center,
              child: OutlinedButton(
                onPressed: (){
                  aviso(context);
                },
                child: Text(
                  "Obs",
                  style: GoogleFonts.aladin(
                      fontSize: 50,
                      color: Colors.amber
                  ),
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}

// Mensagem
void aviso(BuildContext context) {
  var alertDialog = const AlertDialog(
    title: const Text("Uma mensagem foi enviada com sucesso"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {});

        return Dialog(
          backgroundColor: Colors.blueAccent,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          insetAnimationDuration: const Duration(seconds: 1),
          child: Container(
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Atividade Git Parte 2   :)',
                      style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
          ),
        );
      });
}
