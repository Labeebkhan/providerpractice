import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/tilepro.dart';
import '../screen/Favourites.dart';

class TilesPro extends StatefulWidget {
  const TilesPro({super.key});

  @override
  State<TilesPro> createState() => _TilesProState();
}

class _TilesProState extends State<TilesPro> {
  @override
  Widget build(BuildContext context) {
    // final Favlistlis = Provider.of<FavProvider>(context);

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
              itemCount: 30,
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
