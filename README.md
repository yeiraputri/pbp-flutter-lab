# Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
State widget adalah data dari objek yang propertinya atau parameternya akan dipertahankan pada saat widget tersebut dibuat.
Stateless widget adalah widget yang state-nya tidak bisa diubah setelah dibuat. Sedangkan, stateful widget adalah widget yang state-nya bisa diubah setelah pembuatannya. 

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Row: widget yang menampilkan child pada array horizontal
* Column: widget yang menampilkan child pada array vertikal
* Center: widget yang memposisikan child-nya pada posisi tengah yang relatif terhadap dirinya 
* Padding: widget yang menyisipkan child dengan padding yang diberikan
* Text: untuk menampilkan text dengan satu style
* FloatingActionButton: untuk membuat button yang bulat dan hover di atas konten
* Icon: widget untuk membuat graphical icon

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah metode yang berguna dalam memberi tahu framework bahwa status internal dari sebuah objek telah berubah dan juga untuk mengubah User Interface secara dinamis. Variable yang terdampak adalah variabel `_counter` yang nilainya berubah saat user menekan tombol `+` dan `-`.

### Jelaskan perbedaan antara const dengan final.
Const, sama seperti Final, adalah keyword yang digunakan untuk memberikan values pada sebuah variables yang values tersebut tidak dapat diubah. Perbedaan antara final dan const adalah bahwa const membuat variabel konstan pada compile time saja.
 
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat program Flutter baru dengan nama `counter_7`
2. Membuat fungsi _decrementCounter untuk mengurangi nilai counter jika nilai counter lebih dari 0
3. Mengganti text dan color di atas nilai counter sesuai dengan nilai counter. Apabila counter bernilai genap akan berwarna merah dan apabila bernilai ganjil akan berwarna biru
4. Menambahkan button `+` untuk meng-increment nilai counter dan button `-` untuk meng-decrement nilai counter (button `-` akan hilang bila nilai counter sudah 0)

# Tugas 8

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.push akan menimpa halaman yang sudah ada dengan halaman yang baru. Untuk Navigator.pushReplacement sendiri akan mengganti halaman yang sudah ada dengan halaman yang baru

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
* Align : untuk mengatur alignment suatu widget
* Spacer : untuk menambahkan space
* ListTile : untuk menampilkan listtile
* DropdownButton : button yang akan menampilkan dropdown
* IconButton : button yang memiliki icon
* Card : untuk menampilkan card

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
* onPressed : event akan terjadi ketika user menekan widget
* onTap : event akan terjadi ketika user mengklik suatu widget
* onChanged : event akan terjadi ketika terdapat perubahan

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator mengimplementasikan suatu stack dimana pada saat suatu tampilan baru di push akan memunculkan tampilan baru tersebut dan akan menjadi di posisis top of stack. Tampilan tersebut juga akan pertama kali hilang karena berada pada posisi Top of Stack ketika fungsi Navigator.pop dipanggil.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat Drawer dengan routing ke counter_7, form, show_budget
2. Membuat model Budget
3. Membuat form untuk mendapatkan judul, nominal, jenis, dan tanggal dari user.
4. Memasukkan data yang telah didapatkan dari form ke dalam list yang berisi Budget
5. Membuat page untuk menampilkan data yang telah disimpan di dalam list Budget

# Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Dimungkin untuk melakukan pengambilan data JSON tanpa model, tetapi data JSON yang diambil tidak dapat dipastikan sesuai dengan bentuk yang kita inginkan. Maka dari itu, lebih baik apabila dibuat model terlebih dahulu.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Checkbox : membuat checkbox yang memiliki suatu event onChange
* FutureBuilder : membuat widget berdasarkan snapshot yang diambil dari Future
* Expanded : membuat text tidak overflow

## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Pertama-tama diperlukan untuk menambahkan dependensi HTTP yang dilanjutkan dengan melakukan GET pada data JSON. Data tersebut dikonversikan ke dalam model yang sudah dibuat. Data nantinya akan ditampilkan menggunakan FutureBuilder.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan navigasi ke mywatchlist pada drawer
2. Menambahkan depedency http
3. Membuat model untuk data json
4. Membuat function untuk mengambil data json
5. Menampilkan data dalam bentuk inkwell
6. Membuat halaman detail untuk watchlist
