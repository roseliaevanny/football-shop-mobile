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

<details>
<Summary><b>Tugas 9</b></Summary>

## Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
- Karena Map bersifat dinamis, misalkan kita tidak sengaja mengakses data['umur'] sebagai String padahal server mengirimkan sebagai Integer (karena dynamic). Dart tidak akan mendeteksi ini saat compile time, tapi ketika aplikasi dijalankan, akan crash. Jika menggunakan model, kita bisa mendefinisikan secara eksplisit tipe data yang digunakan. Sehingga, jika ada tipe yang salah, errornya akan ketahuan dan diperingatkan oleh IDE jika mencoba mengolahnya sebagai tipe yang salah.
- Dengan Map, kita tidak tahu apakah datanya ada atau null. Sehingga, selalu perlu pengecekan manual apakah datanya ada atau null. Jika menggunakan model, kita bisa langsung menentukan apakah fieldnya required atau nullable, sehingga kompiler akan memaksa untuk melakukan pengecekan null sebelum menggunakannya.
- Jika ada perubahan nama variabel, maka jika menggunakan Map, kita perlu mencari dan mengganti semua nama variabel tersebut. Dengan model, kita cukup mengubah baris di file Model dan seluruh aplikasi akan menyesuaikan.

## Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
- package http digunakan untuk melakukan pertukaran HTTP request secara umum (GET dan POST). http digunakan di balik layar untuk komunikasi dasar jaringan. CookieRequest digunakan untuk keperluan autentikasi dengan Django. CookieRequest menyimpan request (GET dan POST) dan menyimpan dan mengelola cookies (session ID) secara otomatis. Jika menggunakan http biasa, setiap request dianggap sebagai sesi baru (stateless), sehingga user tidak akan terdeteksi sebagai sudah login. CookieRequest menyimpan sesi tersebut, sehingga dapat dideteksi user yang sudah login dan belum login.

## Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- Jika instance CookieRequest tidak dibagikan ke semua komponen di aplikasi Flutter, maka data sesi login akan hilang setiap kali pindah halaman. Jika dibagikan, maka status login dapat diakses dan konsisten di halaman register, login, ataupun halaman lainnya.

## Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
- Di dalam Android Emulator, localhost atau 127.0.0.1 merujuk pada emulator itu sendiri, bukan komputer kita. Jika kita menembak localhost:8000 dari Flutter, aplikasi akan mencari port 8000 di dalam HP virtual, bukan laptop kita. Maka, Google merancang Android Emulator agar menggunakan IP 10.0.2.2 sebagai nama lain khusus untuk mengakses localhost di komputer host (laptop kita). 
- Django akan menolak request yang header hostnya tidak dikenali. Karena request dari emulator datang dengan tujuan IP 10.0.2.2, Django akan memblokirnya jika IP ini tidak terdaftar. Maka, kita perlu menambahkan 10.0.2.2 ke dalam ALLOWED_HOSTS di settings.py.
- Perlu mengaktifkan CORS dan pengaturan SameSite/cookie agar browser/klien mengizinkan respons dari server yang berbeda origin (port berbeda antara Flutter dan Django) dan mengizinkan pengiriman cookie sesi lintas origin.
- Secara default, Android membatasi akses jaringan demi keamanan, karena setiap apliaksi terisolasi dan tidak memiliki hak akses apapun (kamera, lokasi, internet, dll) kecuali diminta secara eksplisit. Maka kita perlu menambahkan izin akses internet agar aplikasi kita dapat mengakses internet.
- Jika IP tidak didaftarkan ke ALLOWED_HOSTS, maka akan menolak request dari IP tersebut. Maka, aplikasi tidak dapat bekerja dengan baik. Jika CORS dan SameSite/cookie tidak dikonfigurasi dengan benar, maka akan terjadi loop di login, misalnya sudah berhasil login, tetapi akan meminta login kembali. Jika tidak diberikan izin akses internet, maka data dan gambar bisa saja tidak muncul.

## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Pertama, user mengisi form di Flutter. Kemudian ketika tombol diklik, fungsi request.postJson dipanggil ke endpoint .../create-flutter/. Data dikirim dalam format JSON. Lalu di django, fungsi create_products_flutter menerima JSON dan membuat objek model Product, dan menyimpannya ke database. Kemudian di halaman list, fungsi fetchProduct memanggil request.get('.../json/'). Kemudian JSON dari Django diubah menjadi list objek ProductsEntry. Kemudian widget FutureBuilder menunggu data selesai diambil, lalu akan menampilkan data tersebut.

## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Flutter mengirim data dengan request.postJson ke endpoint /auth/register/. Kemudian Django di views.py akan memvalidasi username, password, lalu membuat user baru. Jika berhasil, maka user akan diarahkan ke halaman login. Kemudian ketika login, Flutter akan mengirim data ke request.login dan Django di views.py akan menggunakan authenticate() dan auth_login() untuk membuat session ID. Kemudian CookieRequest di Flutter menerima session ID tersebut dan mengubah properti loggedIn menjadi true. Jika logout, maka akan memanggil request.logout ke endpoint /auth/logout/. Django akan memanggil auth_logout(request) untuk menghapus sesi di server. Flutter akan menerima konfirmasi dan CookieRequest menghapus sesi lokal, dan mengarahkan pengguna kembali ke halaman login.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
- Pertama, membuat app baru di django bernama authentication. Kemudian menambahkan app authentication ke INSTALLED_APPS di settings.py Django. Selanjutnya, saya melakukan perintah pip install django-cors-headers dan menambahkannya ke INSTALLED_APPS dan melakukan konfigurasi di settings.py. Selain itu, menambahkan IP 10.0.2.2 pada ALLOWED_HOSTS di settings.py. Selanjutnya, saya menambahkan fungsi login, register, dan logout di views.py di app authentication, serta menambahkan path di urls.py.
- Kemudian, saya menginstal package provider dan pbp_Django_auth. Lalu, memodifikasi root widget untuk menyediakan CookieRequest ke semua child widgets dengan menggunakan Provider. Selanjutnya, saya membuat tampilan untuk halaman login dan register di login.dart dan register.dart.
- Kemudian, saya membuat model untuk Product. Kemudian, saya menginstal package http dan memberikan izin akses internet pada aplikasinya. Kemudian membuat fungsi proxy_image di main/views.py Django. Kemudian, saya membuat berkas products_entry_card.dart untuk menampilkan produk dalam card. Kemudian membuat berkas products_entry_list.dart untuk menampilkan tiap produk yang ada. Kemudian, saya membuat halaman baru, yaitu products_detail.dart untuk menampilkan detail dari produknya. Kemudian, saya menambahkan fungsi create_products_flutter di main/views.py Django. Kemudian saya juga menambahkan filter pada halaman daftar item dengan hanya menampilkan item yang ditambahkan oleh user yang sedang login dengan mengubah fungsi yang ada di products_entry_list.dart.

</details>