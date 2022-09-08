

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/wrap_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestApi'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15,bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop Test',style: TextStyle(fontSize:24,fontWeight: FontWeight.w700),),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            ],
               ),
                  ),
           WrapListViwe(),
          ],
      ),
    );
  }
}
