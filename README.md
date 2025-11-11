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

<details>
<Summary><b>Tugas 8</b></Summary>

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
- push() akan menambahkan halaman atau rute baru di atas stack. Jika halaman baru muncul di layar, halaman lama masih ada di stack, tepat di bawah halaman baru. Karena halaman lama masih ada, Flutter secara otomatis menambahkan tombol "Back" di AppBar halaman baru, yang berfungsi untuk kembali (atau pop) ke halaman lama.
- pushReplacement() akan membuang halaman saat ini dari stack dan menggantinya dengan halaman baru. Karena halaman lama sudah tidak ada, tidak ada tombol "Back" otomatis untuk kembali ke halaman tersebut. 
- push() sebaiknya digunakan jika kita ingin user bisa "back" ke halaman sebelumnya dengan mudah. Misalnya, setelah menekan Create Products di halaman home atau dari drawer, user bisa klik "back" untuk kembali ke home. Sedangkan pushReplacement() digunakan ketika kita tidak ingin pengguna kembali ke halaman sebelumnya. Misalnya, ketika user klik tombol Home dari drawer, maka pushReplacement() digunakan agar user tidak bisa kembali ke halaman sebelumnya. Contoh lain (tetapi belum diimplementasikan) adalah ketika user sudah login, maka user tidak bisa menekan "back" untuk ke login page, maka digunakanlah pushReplacement().

## Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
- Scaffold adalah widget root untuk setiap halaman dan menyediakan tata letak untuk elemen-elemen. Scaffold mengatur letak AppBar, Drawer, dll. Dengan menggunakan Scaffold, maka semua memiliki fondasi tata letak yang sama, sehingga struktur halamannya konsisten di seluruh aplikasi. Kalau tidak pakai Scaffold, maka kita harus meletakkan app bar di suatu posisi, lalu di halaman lain juga harus diletakkan, tapi dengan cara ini bisa saja ukurannya berbeda atau posisinya tidak persis sama. AppBar akan ditempatkan di properti `appBar: ` milik `Scaffold`, sedangkan Drawer ditempatkan di properti `drawer: ` milik `Scaffold`. Di setiap halaman, perlu memanggil LeftDrawer yang sudah dibuat di setiap halaman dalam Scaffold agar konsisten (jangan hanya beberapa halaman aja yang punya drawer, kecuali diinginkan seperti itu). Dengan menggunakan Scaffold, maka ia akan mengatur letak dari AppBar, Drawer, dari widget-widget lainnya, dan akan menghasilkan letak yang konsisten di setiap halaman.

## Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
- Padding adalah widget yang memberikan jarak di sekeliling childnya. Tanpa padding, elemen-elemen akan menempel di tepi layar dan menempel satu sama lain, sehingga tampilannya kurang menarik. Contoh penggunaannya dari aplikasi ini adalah di setiap elemen form, digunakan padding agar memberikan jarak 8 pixel di semua sisi TextFormField.
- SingleChildScrollView adalah widget yang membuat childnya bisa di-scroll secara vertikal. SingleChildScrollView akan mencegah overflow error (misalnya ketika keyboard muncul, konten dibawahnya terdorong dan layar tidak cukup, sehingga muncul error). Maka dengan ini, user dengan layar ponsel kecil tetap bisa mengakses dan mengisi field di bagian paling bawah form. Contoh penggunaan dari SingleChildScrollView di aplikasi ini adalah membungkus Form dengan SingleChildScrollView agar formnya bisa di-scroll secara vertikal dan tidak muncul error jika keyboard sedang ditampilkan.
- ListView mirip dengan SingleChildScrollView, tetapi dioptimalkan untuk menampilkan daftar widget yang panjang atau tak terhingga. Jika kita punya banyak field di form, kita bisa menggunakan ListView agar hanya merender beberapa field yang terlihat. Ini membuat aplikasi tetap cepat dan hemat memori. ListView akan menyusun elemen secara vertikal dan membuatnya bisa di-scroll. Contoh penggunaan di aplikasi ini adalah pada bagian drawer.

## Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
- Untuk menyesuaikan warna tema agar aplikasi memiliki identitas visual yang konsisten, maka kita menggunakan ThemeData di MaterialApp yang ada di main.dart. Sehingga ketika kita memberikan warna pada elemen, kita tinggal menggunakan `color: Theme.of(context).colorScheme.primary`.Hasilnya, warna pada elemen-elemen akan sesuai dan konsisten dengan yang sudah didefinisikan di tema kita. Hal ini sudah diimplementasikan pada `productslist_form.dart` untuk mengatur warna backgroundnya.
</details>