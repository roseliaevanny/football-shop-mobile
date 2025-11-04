# football_shop

<details>
<Summary><b>Tugas 7</b></Summary>

## Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur hierarki yang menggambarkan bagaimana setiap widget disusun di dalam aplikasi Flutter.
Flutter menghitung ukuran dan posisi widget (layout), menggambar ke layar (rendering), dan memproses interaksi pengguna (hit testing).
Jika ada perubahan data (state), bagian widget yang berubah akan dibangun ulang secara efisien.
Setiap widget menjadi node dalam pohon, di mana 1 widget dapat memiliki 1 atau lebih widget lain di dalamnya. Hubungan antara widget disebut parent-child.
Widget parent berfungsi sebagai pembungkus, yaitu mengatur posisi, ukuran, dan perilaku tampilan dari widget child di dalamnya.
Sedangkan widget child berada di dalamnya dan mengikuti aturan tata letak dari parent-nya.

## Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
1. MaterialApp (widget utama atau root dari aplikasi. mengatur routing, theme, dan title aplikasi dan menjadi pembungkus utama semua halaman Flutter).
2. Scaffold (memberikan struktur dasar halaman aplikasi, membentuk tata letak halaman utama, dan memudahkan penempatan elemen-elemen UI)
3. AppBar (bagian atas halaman yang berisi judul atau navigasi)
4. Column (menyusun elemen secara vertikal dari atas ke bawah)
5. Row (menyusun elemen secara horizontal)
6. Padding (memberikan jarak di sekeliling elemen agar tampilan tidak terlalu rapat)
7. Card (membuat tampilan berbentuk kartu dengan bayangan, di proyek ini digunakan untuk menampilkan informasi NPM, nama, dan kelas)
8. Container (mengatur ukuran, warna, dan tata letak widget lain, seperti lebar, tinggi, dan padding di dalam kartu serta item grid)
9. GridView.count (menampilkan beberapa widget dalam bentuk grid dengan jumlah kolom tertentu)
10. Material (memberikan efek ripple dan gaya Material Design pad awidget)
11. InkWell (memberikan efek gelombang saat widget disentuh dan mendeteksi aksi tap)
12. SnackBar (memberikan pesan singkat di bawah layar untuk notifikasi sementara)
13. Text (menampilkan teks di layar)
14. Icon (menampilkan ikon dari koleksi bawaan Flutter)
15. SizedBox (memberikan jarak vertikal atau horizontal antar widget)
16. Center (menyusun widget agar selalu berada di tengah halaman)
17. MediaQuery (mendapatkan informasi ukuran layar perangkat)
18. Theme.of(context) (mengambil tema dari MaterialApp)
19. ScaffoldMessenger (menampilkan pesan seperti SnackBar)

## Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
MaterialApp berfungsi untuk mengatur struktur dasar dan konfigurasi global aplikasi Flutter.
MaterialApp dapat menentukan halaman utama aplikasi, tema aplikasi, judul aplikasi, mengelola navigasi antar halaman, dan mendudung mode terang dan gelap.
MaterialApp sering digunakan sebagai widget root karena menyediakan pondasi Material Design seperti Scaffold, AppBar, FloatingActionButton, dsb.
MaterialApp juga mengatur navigasi dan tema di seluruh aplikasi. Jika tidak menggunakan MaterialApp, maka banyak widget Material seperti Scaffold atau SnackBar tidak akan berfungsi dengan benar.
MaterialApp dibutuhkan agar widget lain bisa bekerja dengan baik.

## Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget adalah widget yang statenya tidak dapat berubah. Tampilannya hanya bergantung pada data awal, dan tidak dapat berubah selama aplikasi berjalan.
StatefulWidget adalah widget yang statenya dapat berubah-ubah selama aplikasi berjalan.
StatelessWidget digunakan ketika kita tahu bahwa tampilan akan selalu tetap atau hanya bergantung pada data tetap. Contohnya logo, teks tetap, dan tombol tanpa perubahan status.
StatefulWidget digunakan ketika kita tahu bahwa tampilannya dapat berubah ketika aplikasi dijalankan. Contohnya, UI berubah karena interaksi pengguna atau ada data yang dinamis, seperti form input, tombol counter, dan animasi.

## Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang merepresentasikan posisi suatu widget di dalam widget tree Flutter. Dengan BuildContext, Flutter mengetahui letak widget di dalam tree, parent dari elemennya, dan resource apa saja yang bisa diakses dari widget tersebut.
Dengan BuildContext, kita dapat mengakses tema atau warna dari parent widget, menampilkan SnackBar, navigasi antar halaman, dan mengetahui ukuran layar.
BuildContext dikirim otomatis ke build() saat widget akan digambar (render) di layar. Sehingga, widget dapat membangun tampilannya berdasarkan konteks dan posisi di dalam tree.

## Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload adalah proses memperbarui tampilan atau kode aplikasi yang sedang berjalan tanpa mengulang ulang seluruh proses dari awal. Ketika kita sedang melakukan perubahan di kode dan menekan tombol hot reload, Flutter akan langsung menampilkan perubahan tersebut langsung ke dalam widget tree yang sedang aktif.
Tampilan aplikasi langsung berubah tanpa kehilangan state yang sudah ada, seperti posisi scroll, input user, atau halaman yang sedang terbuka tetap dipertahankan.
Hot restart akan menghentikan dan menjalankan ulang seluruh aplikasi dari awal. Semua state yang tersimpan akan hilang, dan aplikasi akan dimulai kembali dari main(). Hot restart berguna jika ada perubahan besar, seperti pada inisialisasi variabel global atau struktur widget utama.
Hot reload lebih cepat dan digunakan untuk melakukan perubahan kecil tanpa kehilangan data, sedangkan hot restart lebih lambat, tetapi berguna ketika ingin memulai ulang aplikasi dari awal dan terdapat perubahan besar.
</details>