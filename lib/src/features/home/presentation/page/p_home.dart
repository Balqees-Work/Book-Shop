part of '../../barrel_home.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    // how used getit
    Future<List<EntityBook>?> books = locator<CaseGetBooksTopSearch>()
        .execute();
    return ListView(
      children: [
        WidgetHomeCard(
          onLogout: (event) {
            try {
              // scan
            } catch (e) {
              // error
            } finally {
              // close
              print(event);
            }
          },
          verifiedUser: () {
            print('voidd');
          },
        ),
      ],
    );
  }
}
