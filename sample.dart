// Use widgets over functions
class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MyButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
    );
  }
}

// Use const where possible
const int MY_CONSTANT_VALUE = 10;

// Use const constructors whenever possible
class MyWidget extends StatelessWidget {
  final int myValue;

  const MyWidget({Key? key, required this.myValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('$myValue');
  }
}

// Use nil/gap instead of const Container()
Widget myWidget() {
  return Column(
    children: [
      Text('Hello'),
      nil,
      Text('World'),
    ],
  );
}

// Use state management tools as much as possible
class MyProvider extends Provider<int> {
  MyProvider() : super(value: 0);

  void increment() {
    value++;
  }
}

Widget myWidget() {
  // Get the current value from the provider
  final int myValue = Provider.of<MyProvider>(context).value;

  // Increment the value
  Provider.of<MyProvider>(context).increment();

  return Text('$myValue');
}
