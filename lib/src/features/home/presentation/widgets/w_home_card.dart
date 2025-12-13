part of '../../barrel_home.dart';

class WidgetHomeCard extends StatelessWidget {
  const WidgetHomeCard({
    super.key,
    required this.onLogout,
    required this.verifiedUser,
  });
  // Func
  final ValueChanged onLogout;
  // final void Function(T) onLogout;
  // Action
  final VoidCallback verifiedUser;
  // final void Function() verifiedUser;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        IconButton(
          onPressed: () {
            onLogout('logout');
          },
          icon: const Icon(Icons.logout),
        ),
        IconButton(
          onPressed: () {
            onLogout('verifiedUser');
            verifiedUser();
          },
          icon: const Icon(Icons.verified_user),
        ),
      ],
    );
  }
}
