import 'package:flutter/material.dart';
import 'package:tugas_navigation_pemrograman_berbasis_mobile/models/model_keranjang.dart';
import 'package:intl/intl.dart';

final curFormat = NumberFormat.simpleCurrency(locale: "id_ID");

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int jumlahBarang = -1;
  ModelKeranjang? _keranjang;

  void _incrementCounter() {
    setState(() {
      jumlahBarang++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (jumlahBarang != 0) {
        jumlahBarang--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    if (args.containsKey('keranjang')) {
      var keranjang = args['keranjang'];
      if (keranjang is ModelKeranjang) {
        _keranjang = keranjang;
        if (jumlahBarang == -1) {
          jumlahBarang = _keranjang?.jumlah ?? -1;
        }
      }
    }
    return (
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text(
            "Detail Barang",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 320,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image(
                      image: AssetImage(_keranjang?.foto ?? 'images/error.jpg'),
                      fit: BoxFit.cover,
                    )
                  )
                ),
                Text(
                  _keranjang?.nama ?? 'Error',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8,),
                Text(
                  curFormat.format(_keranjang?.harga ?? 0),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen.shade700,
                  )
                ),
                const SizedBox(height: 16,),
                
                Card(
                  elevation: 0,
                  color: Colors.grey.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey.shade200, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Deskripsi Produk",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          _keranjang?.deskripsi ?? 'Tidak ada deskripsi produk.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade700,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 24,),
                const Text(
                  "Pilih Jumlah",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  )
                ),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: _decrementCounter,
                        icon: const Icon(
                          Icons.remove,
                          size: 24,
                          color: Colors.black87,
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "$jumlahBarang",
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: _incrementCounter,
                        icon: Icon(
                          Icons.add,
                          size: 24,
                          color: Colors.lightGreen.shade800,
                          ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                        {
                          'jumlahBarang' : jumlahBarang
                        }
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      "Konfirmasi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}