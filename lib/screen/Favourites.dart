import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/tilepro.dart';

class FavouriteItem extends StatefulWidget {
  const FavouriteItem({super.key});

  @override
  State<FavouriteItem> createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  @override
  Widget build(BuildContext context) {
    final favouriteprovider = Provider.of<FavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Provider'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavouriteItem()),
              );
            },
            child: Icon(Icons.favorite_outline),
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteprovider.FavList.length,
              itemBuilder:
                  (context, index) => Consumer<FavProvider>(
                    builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.FavList.contains(index)) {
                            value.remFav(index);
                          } else {
                            value.addFav(index);
                          }
                        },
                        title: Text('Item ' + index.toString()),
                        trailing: Icon(
                          value.FavList.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                        ),
                      );
                    },
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
