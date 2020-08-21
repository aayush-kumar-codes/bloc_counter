import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter/counter_cubit.dart';

class DrawerCreate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 55.0,
          child: DrawerHeader(
            // padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: Text(
              'Bloc App',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          title: Text('Counter Page'),
          onTap: () {
            // Update the state of the app.
            // ...

            Navigator.pushNamed(context, '/');
            context.bloc<StringCubit>().changeTitle();
          },
        ),
        ListTile(
          title: Text('Timer Page'),
          onTap: () {
            // Update the state of the app.
            // ...

            Navigator.pushNamed(context, '/timer');
            context.bloc<StringCubit>().changeTitle();
          },
        ),
      ],
    );
  }
}
