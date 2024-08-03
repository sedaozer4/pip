import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class PIP extends StatefulWidget {
  const PIP({super.key});

  @override
  State<PIP> createState() => _PIPState();
}

class _PIPState extends State<PIP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PIP View', style: TextStyle(color: Colors.white),),
        backgroundColor:  Theme.of(context).primaryColor,
      ),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(builder: (context, isFloating) {
      return Scaffold(
        resizeToAvoidBottomInset: !isFloating,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Text('Bu bir PIP Penceresidir.'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    onPressed: () {
                      PIPView.of(context)?.presentBelow(BackGroundScreen());
                    },
                    child: Text(
                      'Başla!',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class BackGroundScreen extends StatelessWidget {
  const BackGroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text('Bu bir arakaplan sayfasıdır!'),
          ),
        ),
      ),
    );
  }
}
