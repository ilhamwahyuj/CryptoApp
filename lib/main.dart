import 'package:flutter/material.dart';
import 'services/api_service.dart';

void main() {
  runApp(CryptoApp());
}

class CryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CryptoScreen(),
    );
  }
}

class CryptoScreen extends StatefulWidget {
  @override
  _CryptoScreenState createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  ApiService api = ApiService();
  List cryptos = [];
  bool loading = true;

  void loadData() async {
    setState(() => loading = true);
    cryptos = await api.fetchCrypto();
    setState(() => loading = false);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Prices"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: loadData,
            child: Text("Refresh"),
          ),

          Expanded(
            child: loading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: cryptos.length,
                    itemBuilder: (context, index) {
                      final coin = cryptos[index];
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: ListTile(
                          leading: Text(
                            coin["rank"].toString(),
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            "${coin['symbol']}  (${coin['name']})",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            coin["price_usd"],
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
