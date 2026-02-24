# Angela Caroline Budiman (2409116008) Sistem Informasi A'2024

## Struktur Folder
<img width="233" height="300" alt="image" src="https://github.com/user-attachments/assets/e8d4d279-3eea-4c8d-a58f-87aa47c834da" />

Struktur folder pada project ini terdiri dari folder models, pages, dan file utama main.dart di dalam direktori lib. Folder models berisi class yang menangani data dan state management seperti product.dart, cart_item.dart, cart_model.dart, dan counter_model.dart. Folder pages berisi seluruh tampilan atau UI aplikasi seperti halaman daftar produk, keranjang, checkout, serta beberapa halaman demo state management. Sedangkan main.dart berfungsi sebagai entry point aplikasi yang mengatur konfigurasi awal dan penyediaan Provider untuk seluruh aplikasi.

## 🧩 Widget yang Digunakan
- StatelessWidget
- StatefulWidget
- Scaffold
- AppBar
- GridView
- ListView
- Card
- TextField
- DropdownButton
- AlertDialog
- Navigator
- Consumer
- Selector
- MultiProvider

## 🛒 Shopping Cart App: Flutter State Management
Implementasi manajemen state menggunakan Provider dan ChangeNotifier untuk simulasi aplikasi e-commerce sederhana. Proyek ini merupakan bagian dari materi perkuliahan Pemrograman Mobile di Universitas Mulawarman.

## 📌 Deskripsi Singkat
Aplikasi ini mendemonstrasikan bagaimana mengelola state global (keranjang belanja) yang dapat diakses oleh berbagai halaman tanpa perlu melakukan constructor drilling.

## 🚀 Fitur Utama
- Katalog Produk: Menampilkan daftar item dengan fitur pencarian dan filter kategori.
- Manajemen Keranjang: Tambah/hapus item, serta penyesuaian jumlah (increment/decrement).
- Real-time Update: Total harga dan jumlah item terupdate secara otomatis menggunakan Consumer.
- Checkout System: Ringkasan pesanan sebelum proses finalisasi.

## 🧠 Konsep & Implementasi State
Aplikasi ini memisahkan logika bisnis dari UI dengan menggunakan pola ChangeNotifier.
🛠️ Perbandingan Method Provider

<img width="750" height="120" alt="image" src="https://github.com/user-attachments/assets/04a0c65c-0af6-4673-afe0-156a5c2fb45c" />

## 💻 Cara Instalasi
1. Clone Repository

<img width="767" height="32" alt="image" src="https://github.com/user-attachments/assets/0686f6df-1597-4fd2-9927-15d27a67fe34" />


2. Install Dependencies
   
<img width="199" height="43" alt="image" src="https://github.com/user-attachments/assets/60aa7a51-d5a3-4af6-a461-7ecc6200271e" />

3. Run Application

<img width="164" height="48" alt="image" src="https://github.com/user-attachments/assets/8f18e9ba-cd36-4479-b766-f79f0ca020e8" />

## Output

<img width="1919" height="970" alt="image" src="https://github.com/user-attachments/assets/509545c2-92c7-472b-9bbd-1d9f20c2526e" />

Halaman ini menampilkan daftar produk dalam bentuk grid dua kolom dengan nama, harga, dan tombol tambah ke keranjang. Di bagian atas terdapat fitur pencarian dan filter kategori untuk menyaring produk. Ikon keranjang di AppBar menunjukkan jumlah item yang ditambahkan. Semua perubahan data terhubung dengan Provider sehingga jumlah dan isi keranjang otomatis ter-update.

## 🎓 Akademik
### Mata Kuliah: Pemrograman Mobile
### Program Studi: Sistem Informasi - Universitas Mulawarman


