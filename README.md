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

<img width="1919" height="285" alt="image" src="https://github.com/user-attachments/assets/e773ac4d-fc7e-49d0-ba94-c6c78fdb9768" />

Fitur Search digunakan untuk mencari produk berdasarkan nama dengan cara mengetik kata kunci pada kolom pencarian, sehingga daftar produk akan otomatis tersaring sesuai input pengguna. Filter kategori (All, Electronics, Accessories) berfungsi untuk menampilkan produk berdasarkan kategori tertentu agar pengguna lebih mudah menemukan jenis barang yang diinginkan. Sedangkan ikon keranjang (Cart) di pojok kanan atas menampilkan jumlah item yang telah ditambahkan melalui badge angka, dan ketika ditekan akan mengarahkan pengguna ke halaman Shopping Cart untuk melihat, mengubah jumlah, atau menghapus produk yang dipilih.

<img width="1919" height="970" alt="image" src="https://github.com/user-attachments/assets/b8cfa47e-8fef-4782-bd62-0fd9ab5cdbcd" />

Gambar tersebut menampilkan halaman Shopping Cart dalam kondisi kosong pada aplikasi Flutter. Di bagian atas terdapat AppBar dengan judul “Shopping Cart” dan tombol kembali. Pada bagian tengah layar terdapat ikon keranjang berwarna abu-abu yang menunjukkan bahwa belum ada produk yang ditambahkan. Di bawahnya terdapat teks “Your cart is empty” serta tombol “Continue Shopping” yang berfungsi untuk kembali ke halaman daftar produk. Tampilan ini muncul ketika cart.isEmpty bernilai true dan dirender menggunakan Consumer<CartModel> sehingga UI akan berubah otomatis jika ada item yang ditambahkan ke keranjang.

<img width="1919" height="971" alt="image" src="https://github.com/user-attachments/assets/167114f2-f41b-4035-bfae-5855eb9c5ca8" />

Tombol “Add” berfungsi untuk menambahkan produk ke dalam keranjang belanja menggunakan state management Provider. Saat tombol ditekan, fungsi context.read<CartModel>().addItem(product) akan dipanggil untuk menyimpan produk ke dalam CartModel, lalu notifyListeners() memperbarui tampilan secara otomatis seperti badge jumlah item di ikon keranjang dan isi halaman Cart. Jika tombol ditekan lagi pada produk yang sama, maka quantity akan bertambah tanpa perlu memuat ulang halaman.

<img width="1919" height="969" alt="image" src="https://github.com/user-attachments/assets/ba2db60e-37aa-4f1f-8d66-ba1a90e5d0c0" />

Halaman Shopping Cart ini menampilkan daftar produk yang sudah ditambahkan ke keranjang, lengkap dengan nama produk, harga satuan, serta kontrol jumlah berupa tombol (+/-) untuk menambah atau mengurangi kuantitas secara langsung. Di sisi kanan setiap item terdapat ikon hapus (delete) untuk menghapus produk dari keranjang, dan subtotal harga per item ditampilkan sesuai jumlah yang dipilih. Pada bagian bawah terdapat ringkasan Total harga keseluruhan yang otomatis ter-update menggunakan Provider setiap kali jumlah berubah, serta tombol Checkout untuk melanjutkan ke proses pemesanan.

<img width="265" height="190" alt="image" src="https://github.com/user-attachments/assets/d9e97e0e-1918-4c65-804c-2e525e0a0519" />

Popup Checkout ini menampilkan ringkasan akhir sebelum pesanan diproses, yaitu total harga keseluruhan dan jumlah item yang ada di keranjang. Tombol Cancel digunakan untuk membatalkan proses dan kembali ke halaman keranjang, sedangkan tombol Confirm akan menyelesaikan transaksi (biasanya dengan mengosongkan keranjang dan menampilkan notifikasi berhasil). Dialog ini berfungsi sebagai tahap konfirmasi agar pengguna memastikan kembali pesanannya sebelum checkout.

<img width="1919" height="400" alt="image" src="https://github.com/user-attachments/assets/0eac7726-857a-46ca-bd16-598c8d014e07" />

Tampilan “Order placed!” merupakan notifikasi (SnackBar) yang muncul setelah pengguna menekan tombol Confirm pada halaman checkout. Pesan ini menandakan bahwa proses pemesanan berhasil dilakukan, keranjang telah dikosongkan, dan transaksi dianggap selesai. Notifikasi ini muncul sementara sebagai feedback kepada pengguna bahwa pesanan telah diproses dengan sukses.

## 📝 Implementasi Fitur & Penilaian
### ✅ WAJIB (70 Points)
### ✔ Add to Cart dari Product List
Setiap produk memiliki tombol Add yang terhubung dengan CartModel menggunakan context.read<CartModel>(). Saat ditekan, produk langsung ditambahkan ke keranjang dan badge pada ikon cart otomatis ter-update.
### ✔ Menampilkan Item di Keranjang dengan Quantity
Halaman CartPage menampilkan daftar produk yang sudah ditambahkan lengkap dengan jumlah (quantity) masing-masing item.
### ✔ Update Quantity (+ / -)
Pengguna dapat menambah atau mengurangi jumlah produk menggunakan tombol increment (+) dan decrement (-). Perubahan langsung memperbarui total harga menggunakan notifyListeners().
### ✔ Remove Item dari Cart
Setiap item memiliki tombol delete untuk menghapus produk tertentu dari keranjang.
### ✔ Menampilkan Total Harga Secara Real-time
Total harga dihitung otomatis dari seluruh item di dalam cart dan diperbarui secara langsung menggunakan Consumer<CartModel>.

## ⭐ BONUS (30 Points)
### 🔎 Search Produk (+10)
Tersedia kolom pencarian untuk memfilter produk berdasarkan nama.
### 🗂 Filter Kategori (+10)
Dropdown kategori memungkinkan pengguna memfilter produk berdasarkan kategori (All, Electronics, Accessories).
### 🧾 Checkout Page (+10)
Tersedia halaman/dialog checkout yang menampilkan ringkasan total harga dan jumlah item sebelum konfirmasi pesanan. Setelah konfirmasi, cart akan dikosongkan dan muncul notifikasi “Order placed!”.

## 🎓 Akademik
### Mata Kuliah: Pemrograman Mobile
### Program Studi: Sistem Informasi - Universitas Mulawarman


