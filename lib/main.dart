import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:chat_app/screens/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  const app = App();

  runApp(app);
}
