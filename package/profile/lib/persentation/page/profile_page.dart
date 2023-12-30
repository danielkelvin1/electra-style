import 'package:core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:profile/persentation/page/personal_detail_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              _buildInfoProfileCard(),
              const SizedBox(
                height: 24.0,
              ),
              _buildListTileProfile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoProfileCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  imageDefault,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daniel2asdas asdas dasd asdasd asdas dasdas dasd asd ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Danielkelvin@gmail.com',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.grey,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTileProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Personal Details',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            onTap: () {
              context.push(PersonalDetailPage.routeName);
            },
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 222, 221, 221)),
              child: Icon(
                Icons.person_outline,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: const Icon(Icons.chevron_right_outlined),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text(
              'My Order',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 222, 221, 221)),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: const Icon(Icons.chevron_right_outlined),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text(
              'My Address',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 222, 221, 221)),
              child: Icon(
                Icons.alternate_email_outlined,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: const Icon(Icons.chevron_right_outlined),
          ),
        ],
      ),
    );
  }
}
