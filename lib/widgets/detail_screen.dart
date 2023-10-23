import 'package:flutter/material.dart';
import 'package:prj_wisatacandisi51/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            // Image Utama
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            )
          ],
        ),
        // Detail Info
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              // Info Atas nama candi dan tombol favorite
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    candi.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border))
                ],
              ),
              // Info Tengah (lokasi, dibangun, tipe)
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.place,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const SizedBox(
                    width: 70,
                    child: Text(
                      "Lokasi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(': ${candi.location}')
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const SizedBox(
                    width: 70,
                    child: Text(
                      'Dibangun',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(": ${candi.built}")
                ],
              ),
              Row(
                children: [],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
