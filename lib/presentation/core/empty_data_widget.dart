import 'package:flutter/widgets.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Data Found'),
    );
  }
}
