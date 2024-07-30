import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/theme_change.dart' as theme;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: theme.ThemeProvider()..getTheme())
      ],
      child: Consumer<theme.ThemeProvider>(builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme.ThemeChange.lightTheme,
          darkTheme: theme.ThemeChange.darkTheme,
          themeMode: value.mode,
          home: const MyHomePage(title: 'theme_change Provider Demo'),
        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<theme.ThemeProvider>(
              builder: (context, value, child) {
                return value.pTheme
                    ? Text(
                        "This is Demo of dark Theme",
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    : Text(
                        "This is Demo of Light Theme",
                        style: Theme.of(context).textTheme.headlineMedium,
                      );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Consumer<theme.ThemeProvider>(
        builder: (context, value, child) {
          return FloatingActionButton(
            onPressed: () {
              value.setTheme();
            },
            child: Icon(value.themeMode),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
