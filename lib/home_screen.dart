import 'package:flutter/material.dart';
import 'package:e_commerce/models/model_keranjang.dart';
import 'package:intl/intl.dart';

final curFormat = NumberFormat.simpleCurrency(locale: "id_ID");

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _listKeranjang = [
      ModelKeranjang(
        foto: "images/intel-core-i9-11900k.jpg",
        nama: "Intel Core i9-11900K",
        harga: 9500000,
        jumlah: 1,
        deskripsi: "Processor Desktop Intel Core i9-11900K Generasi ke-11. Memiliki 8 Cores dan 16 Threads dengan kecepatan base clock 3.5 GHz dan Max Turbo Frequency mencapai 5.3 GHz. Dilengkapi dengan 16MB Intel Smart Cache dan TDP 125W.",
      ),
      ModelKeranjang(
        foto: "images/RAM DDR4 V-GeN TSUNAMI X 64GB 3000MHz CL16 (2X32GB) RGB-V.jpg",
        nama: "RAM DDR4 V-GeN TSUNAMI X 64GB (2X32GB)",
        harga: 4873000,
        jumlah: 1,
        deskripsi: "Dual Channel Kit RAM DDR4 V-GeN TSUNAMI X kapasitas total 64GB (2x32GB) berkecepatan 3000MHz dengan latency CL16. Dilengkapi dengan heatsink berkualitas tinggi dan pencahayaan RGB-V yang menawan untuk estetika PC gaming Anda.",
      ),
      ModelKeranjang(
        foto: "images/V-GeN SSD M.2 NVme PCIe Gen4.0x4 2TB - TSUNAMI.jpg",
        nama: "V-GeN SSD M.2 NVMe PCIe Gen4.0x4 2TB",
        harga: 7885000,
        jumlah: 1,
        deskripsi: "SSD M.2 NVMe PCIe Gen 4.0 x4 berkapasitas ultra besar 2TB seri TSUNAMI. Menawarkan kecepatan baca hingga 7000 MB/s dan kecepatan tulis hingga 6500 MB/s untuk waktu boot, transfer file, dan loading game yang instan.",
      ),
      ModelKeranjang(
        foto: "images/VGA Card ASUS GeForce RTX 3090 ROG Strix Gaming OC White 24GB GBDDR6.jpg",
        nama: "ASUS ROG Strix RTX 3090 OC White 24GB",
        harga: 69785000,
        jumlah: 1,
        deskripsi: "Kartu grafis gaming premium ASUS ROG Strix GeForce RTX 3090 edisi warna putih. Memiliki memori super cepat 24GB GDDR6X, pendingin triple axial-tech fan, dan overclock pabrikan (OC) untuk pengalaman bermain game 4K dan 8K tanpa hambatan.",
      ),
      ModelKeranjang(
        foto: "images/Seagate Barracuda 8TB.jpg",
        nama: "Seagate Barracuda 8TB HDD",
        harga: 2985000,
        jumlah: 1,
        deskripsi: "Hard Disk Drive internal Seagate Barracuda form factor 3.5 inci berkapasitas 8TB. Menggunakan interface SATA 6 Gb/s, kecepatan putaran piringan 5400 RPM, dan cache besar 256MB untuk penyimpanan file arsip yang aman dan andal.",
      ),
      ModelKeranjang(
        foto: "images/MOTHERBOARD MSI Z590 PRO WIFI.jpg",
        nama: "MOTHERBOARD MSI Z590 PRO WIFI",
        harga: 3550000,
        jumlah: 1,
        deskripsi: "Motherboard MSI Z590 PRO WIFI dengan socket LGA 1200 untuk processor Intel Core generasi ke-10 dan ke-11. Mendukung RAM DDR4 up to 5333(OC) MHz, PCIe 4.0, slot M.2 ganda Shield Frozr, serta konektivitas nirkabel Wi-Fi 6E built-in.",
      ),
      ModelKeranjang(
        foto: "images/PCCOOLER GI-CX360 ARGB.jpg",
        nama: "Liquid Cooler PCCOOLER GI-CX360 ARGB",
        harga: 1275000,
        jumlah: 1,
        deskripsi: "Sistem pendingin cair CPU All-in-One (AIO) dari PCCOOLER dengan radiator berukuran 360mm. Dilengkapi 3 kipas ARGB 120mm PWM berkinerja tinggi serta pompa dengan efek pencahayaan ARGB halo untuk pendinginan CPU yang optimal.",
      ),
      ModelKeranjang(
        foto: "images/MSI MPG A850GF.jpg",
        nama: "MSI MPG A850GF Power Supply 850W",
        harga: 2079000,
        jumlah: 1,
        deskripsi: "Power Supply Unit (PSU) MSI MPG berdaya 850 Watt dengan sertifikasi efisiensi daya 80 Plus Gold. Mengadopsi desain kabel Full Modular untuk kerapian manajemen kabel di dalam casing Anda, serta menggunakan 100% kapasitor Jepang.",
      ),
      ModelKeranjang(
        foto: "images/Casing ARMAGGEDDON Nimitz TR8000.jpg",
        nama: "Casing ARMAGGEDDON Nimitz TR8000",
        harga: 837000,
        jumlah: 1,
        deskripsi: "Casing PC ATX Mid Tower ARMAGGEDDON Nimitz TR8000 dengan desain premium panel kaca tempered di bagian depan dan samping. Mendukung manajemen kabel yang rapi, instalasi pendingin cair, dan pemasangan kipas pendingin hingga 6 slot.",
      ),
      ModelKeranjang(
        foto: "images/Mi Curved Gaming Monitor 34.jpg",
        nama: "Xiaomi Mi Curved Gaming Monitor 34\"",
        harga: 6999000,
        jumlah: 1,
        deskripsi: "Monitor gaming lengkung Xiaomi berukuran 34 inci dengan resolusi tajam WQHD (3440 x 1440) dan rasio aspek ultra-wide 21:9. Dilengkapi refresh rate tinggi 144Hz, waktu respon cepat, kelengkungan 1500R, dan cakupan warna 121% sRGB.",
      ),
      ModelKeranjang(
        foto: "images/MSi Vigor GK60.jpg",
        nama: "MSI Vigor GK60 Mechanical Keyboard",
        harga: 940000,
        jumlah: 1,
        deskripsi: "Keyboard gaming mechanical MSI Vigor GK60 menggunakan switch Cherry MX Red yang linear dan senyap. Dibuat dengan pelat atas aluminium kelas penerbangan yang sangat kokoh, dilengkapi backlight LED merah dinamis dan rollover N-Key penuh.",
      ),
      ModelKeranjang(
        foto: "images/Razer Basilisk Ultimate with Charging Dock.jpg",
        nama: "Razer Basilisk Ultimate + Charging Dock",
        harga: 2649000,
        jumlah: 1,
        deskripsi: "Mouse gaming nirkabel kustomisasi penuh Razer Basilisk Ultimate. Dilengkapi sensor optik Focus+ 20.000 DPI yang presisi, 11 tombol makro yang dapat diprogram, teknologi nirkabel HyperSpeed, dan paket dock pengisi daya RGB.",
      ),
      ModelKeranjang(
        foto: "images/Razer Gigantus V2.jpg",
        nama: "Mousepad Razer Gigantus V2 XXL",
        harga: 599000,
        jumlah: 1,
        deskripsi: "Mousepad gaming Razer Gigantus V2 ukuran XXL (940 x 410 mm). Dibuat dengan permukaan kain bertekstur mikro untuk pelacakan mouse yang presisi dan cepat, serta dilengkapi busa tebal berseri tinggi untuk kenyamanan pergelangan tangan Anda.",
      ),
      ModelKeranjang(
        foto: "images/Arctis Pro Wireless Black Gaming Headset.jpg",
        nama: "SteelSeries Arctis Pro Wireless Headset",
        harga: 5750000,
        jumlah: 1,
        deskripsi: "Headset gaming nirkabel kelas atas SteelSeries Arctis Pro Wireless. Menggunakan konektivitas ganda 2.4G lossless nirkabel dan Bluetooth, Hi-Res speaker driver, mikrofon ClearCast terbaik, dan dilengkapi stasiun pemancar audio nirkabel OLED.",
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text(
            "Keranjang Belanja",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 2,
        ),
        body: _listKeranjang.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 100,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Keranjang Belanja Anda Kosong",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Semua barang telah dihapus dari keranjang.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  children: _listKeranjang.map((keranjang) {
                  return Card(
                      color: Colors.white,
                      elevation: 2,
                      shadowColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.grey.shade100, width: 1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image(
                                  image: AssetImage(keranjang.foto),
                                  fit: BoxFit.cover,
                                )
                              )
                            ),
                          const SizedBox(width: 4,),
                          Expanded(
                            child: SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                children: [
                                  Text(
                                      keranjang.nama,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                      curFormat.format(keranjang.harga),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightGreen.shade700,
                                      )
                                    ),
                                  Text(
                                      "Jumlah: ${keranjang.jumlah}",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade600,
                                      )
                                    ),
                                  SizedBox(
                                    height: 32,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        var result = await Navigator.of(context).pushNamed(
                                          '/detail',
                                          arguments: {
                                            'keranjang': keranjang,
                                            },
                                        );

                                        _handleNavResult(result, keranjang);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightGreen,
                                        foregroundColor: Colors.white,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                      ),
                                      child: const Text(
                                          "Lihat Detail",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              )
                            )
                          )
                        ],
                      )
                    );
                  }).toList(),
                ),
              ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 8,
          child: _HomeScreenBottomBar(
            total: _listKeranjang.isEmpty
                ? 0
                : _listKeranjang.map((keranjang) => keranjang.harga * keranjang.jumlah).reduce((a, b) => a + b),
          ),
        ),
    );
  }

  void _handleNavResult(Object? result, ModelKeranjang keranjang) {
    if (result != null) {
      var resultMap = result as Map<String, Object>;
      if (resultMap.containsKey('jumlahBarang')) {
        var jumlahBarang = resultMap['jumlahBarang'];
        if (jumlahBarang is int) {
          int _jumlahBarang = jumlahBarang;
          var index = _listKeranjang.indexOf(keranjang);
          if (index >= 0) {
            setState(() {
              if (_jumlahBarang == 0) {
                _listKeranjang.removeAt(index);
              } else {
                _listKeranjang[index] = ModelKeranjang(
                  jumlah: _jumlahBarang,
                  nama: keranjang.nama,
                  foto: keranjang.foto,
                  harga: keranjang.harga,
                  deskripsi: keranjang.deskripsi,
                );
              }
            });
          }
        }
      }
    }
  }
}

class _HomeScreenBottomBar extends StatelessWidget {
  const _HomeScreenBottomBar({
    this.total = 0,
  });

  final int total;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightGreen.shade700,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Text(
                  "TOTAL BELANJA",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(0.9),
                    letterSpacing: 0.5,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                flex: 3,
                child: Text(
                  curFormat.format(total),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
      ),
    );
  }
}
