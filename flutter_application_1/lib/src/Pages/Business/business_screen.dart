import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/data/todos.dart';
import 'package:provider/provider.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => MyDatabase(),
      dispose: (_, database) {
        database.close();
      },
      child: const Business(),
    );
  }
}

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.read<MyDatabase>().todos.title.name.toString()),
    );
  }
}
