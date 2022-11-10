# Tugas 7 PBP
Yeira Putri Nandika - 2106751726

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
