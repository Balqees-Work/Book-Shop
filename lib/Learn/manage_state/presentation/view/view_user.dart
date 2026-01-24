import 'package:book_shop_bal/Learn/manage_state/data/model/user.dart';
import 'package:book_shop_bal/Learn/manage_state/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewUser extends StatelessWidget {
  const ViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UserBloc>(context);
    final bloc1 = context.read<UserBloc>();
    final bloc3 = context.watch<UserBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('View User')),
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return switch (state) {
              UserInitialize() => Text('Press button to start'),
              UserLoading() => CircularProgressIndicator(),
              UserLoaded(user: User u) => ListTile(
                title: Text(u.name),
                subtitle: Text(u.email),

                // onTap: () {
                //   onClick();
                // },
              ),
              // TODO: Handle this case.
              UserError(user: User u) => Text(
                'u',
                style: TextStyle(color: Colors.red),
              ),
            };
          },
        ),
      ),
    );
  }
}
