# 📱 Crypto Price App (Flutter)

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue)
![Dart](https://img.shields.io/badge/Dart-Language-blue)
![API](https://img.shields.io/badge/API-Coinlore-orange)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

Aplikasi mobile sederhana berbasis Flutter untuk menampilkan data cryptocurrency dunia secara real-time menggunakan API dari Coinlore.

---

## 📌 Deskripsi Proyek

Project ini dibuat untuk memenuhi tugas yang bertujuan menampilkan data cryptocurrency dari API online dan ditampilkan dalam bentuk aplikasi mobile.

Aplikasi ini menampilkan data:
- Rank cryptocurrency
- Nama coin
- Symbol
- Harga dalam USD (price_usd)

Data diambil secara real-time dari:
https://api.coinlore.net/api/tickers/

---

## 🚀 Fitur Aplikasi

✅ Ambil data cryptocurrency dari API  
✅ Tampilkan data dalam list  
✅ Tombol refresh untuk update data  
✅ Parsing JSON ke dalam List  
✅ UI sederhana & responsif  

---

## 🛠 Teknologi yang Digunakan

- Flutter SDK
- Dart
- Package HTTP
- REST API (Coinlore)

---

## 📂 Struktur Folder

lib/
├── main.dart
└── services/
└── api_service.dart

---

## 🔄 Alur Kerja Aplikasi

1. Aplikasi dijalankan
2. Mengirim request ke API
3. API mengembalikan data JSON
4. Data diproses menjadi List
5. List ditampilkan dalam aplikasi
6. Tombol refresh akan memuat ulang data

# Getting Started:
(instruksi singkat untuk build dan run project)

- Clone repository ini
  git clone https://github.com/username_anda/crypto-price-app.git
- Masuk ke direktori project
  cd crypto-price-app
- Install dependencies
  flutter pub get
- Jalankan aplikasi
  flutter run


## 📷 Tampilan Aplikasi menampilkan daftar cryptocurrency lengkap dengan:

- Rank
- Symbol
- Harga USD
(Data akan ditampilkan secara otomatis ketika aplikasi dijalankan dan dapat diperbarui dengan tombol Refresh)

## 📘 Penjelasan File
- api_service.dart
  File ini digunakan untuk mengambil data cryptocurrency dari API menggunakan HTTP GET.
- main.dart
  File utama untuk tampilan aplikasi dan pengolahan data API.

## ✅ Hasil Pengujian
- Aplikasi berhasil:
- Mengambil data dari API
- Menampilkan hasil ke dalam ListView
- Parsing JSON berjalan normal
- Tombol refresh bekerja dengan baik
