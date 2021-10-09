import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RIZQILLAH / 1957301020'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: <Color>[
                    Colors.green,
                    Colors.blue
                  ]),
                ),
                padding: EdgeInsets.only(top: 20, left: 5, right: 5),
                child: Text(
                  '\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices tincidunt semper. Pellentesque ac auctor metus. \n \tPhasellus ac turpis non massa bibendum pretium egestas vel arcu. Sed aliquam eros vel diam ullamcorper scelerisque. Aliquam non risus gravida, maximus magna in, placerat risus. \n \tMauris consequat ut ante eu vestibulum. Maecenas id massa sit amet tellus commodo tempor nec at ligula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \n \tDonec porta porttitor arcu, sit amet porttitor orci imperdiet et. Pellentesque sodales velit fermentum ultricies dapibus. Cras sem orci, imperdiet in diam eget, dapibus porta nulla. Etiam auctor lobortis tempus. \n \tMorbi efficitur condimentum tristique. Nulla at enim quis lectus pretium dictum quis imperdiet ante. Nullam in mauris mi. Cras ac egestas est. Curabitur hendrerit tristique \n \tlacus, quis commodo quam ornare at. In semper faucibus euismod. Maecenas nec lacus ornare, tempor velit vitae, commodo purus. Aliquam tincidunt pretium lorem sed ornare. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce condimentum, risus et suscipit placerat, arcu nunc ornare nunc, ut imperdiet nibh mauris in sapien. Duis facilisis sapien ut nibh lacinia faucibus. Praesent varius, metus in consectetur blandit, velit risus posuere orci, et lobortis tortor risus at justo. Quisque rhoncus dapibus accumsan. Vestibulum sit amet iaculis eros. Donec sollicitudin nulla orci, et pharetra diam sagittis eu. Phasellus pulvinar euismod tempor. Nulla sed erat varius, euismod nulla eget, iaculis leo. In hac habitasse platea dictumst. Etiam congue varius ligula. Etiam vel erat bibendum, ultricies libero eu, venenatis nunc. Sed feugiat sodales orci. Fusce mollis pharetra magna. Nunc eget lectus vel quam gravida lacinia sed nec risus. Praesent porttitor sed risus vitae congue. Vivamus volutpat eros et enim maximus tincidunt. Vestibulum eget leo et nisl facilisis euismod id at mi. Nam id dolor euismod, vulputate magna a, iaculis dolor. Nam sit amet rutrum metus. Quisque rutrum odio odio, in facilisis risus placerat vel. Cras at pharetra ante, ac faucibus justo. Cras congue ex nunc, non facilisis leo tincidunt sed. Vivamus auctor, nisl in semper euismod, ligula quam faucibus neque, a posuere mi eros sit amet diam. Ut sed orci vehicula, pulvinar lectus vitae, dignissim massa. Aliquam tincidunt metus vel felis convallis iaculis. Etiam commodo laoreet libero vel bibendum. Vivamus urna nulla, faucibus in tellus vel, ullamcorper dictum enim. Vestibulum massa enim, blandit sit amet varius sit amet, egestas id metus. Fusce quis nulla bibendum nisl consectetur bibendum. Curabitur ex nulla, scelerisque id rhoncus sed, laoreet nec neque. Nulla eget magna vitae nunc imperdiet molestie et sit amet magna. Sed eu ex a felis interdum malesuada et eu mi. Sed neque nunc, imperdiet vitae eros sit amet, congue volutpat mauris. Ut auctor lobortis ante sit amet lobortis. Duis fermentum nec velit a pellentesque. Morbi ac tellus mauris. Integer finibus odio vitae ultricies hendrerit. Morbi nec feugiat nibh. Sed quis ligula gravida, vestibulum nulla sodales, volutpat erat. Curabitur feugiat sollicitudin ante pulvinar condimentum.',
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Consolas'),
                  textAlign: TextAlign.justify,
                )),
          ),
        ),
      ),
    );
  }
}
