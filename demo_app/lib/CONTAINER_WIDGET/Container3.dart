import 'package:flutter/material.dart';

class ContainerWidgetPraactice extends StatefulWidget {
  const ContainerWidgetPraactice({super.key});

  @override
  State<ContainerWidgetPraactice> createState() => _ContainerWidgetPraacticeState();
}

class _ContainerWidgetPraacticeState extends State<ContainerWidgetPraactice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height:300,
          width: 300,
          color: Colors.grey,
          child: Align(alignment: Alignment.bottomRight,
          child: Text("Bottom Right"),),
        ),
      ),
    );
  }
}
