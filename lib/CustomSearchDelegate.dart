import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (){
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    /*List<String> lista = ["Mine", "Mob", "Fogo", "Jogo", "Android"];
    //List.empty(growable: true);

    if (query.isNotEmpty){

      List<String> listaFiltro = lista.where((texto) => texto.toLowerCase().startsWith(query.toLowerCase())).toList();

      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: (){
              close(context, listaFiltro[index]);
            },
            title: Text(listaFiltro[index]),
          );
        },
        itemCount: listaFiltro.length,
      );
    } else {
      return Center(
        child: Text("Nenhum resultado."),
      );

    }*/
    return Container();
  }
}