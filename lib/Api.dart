import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "";
const ID_CANAL = "UCiIZY89KwQkxAW-4Le7U7zg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    Uri url = Uri.parse(
        URL_BASE + "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q=$pesquisa"
    );
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      print(dadosJson["items"][0]["snippet"]["title"]);
    } else {
      print("Erro");
    }
  }
}



