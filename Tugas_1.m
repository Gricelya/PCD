//Berfungsi untuk membaca image
>> image = imread('kelompok pcd.jpg');
warning: your version of GraphicsMagick limits images to 16 bits per pixel
warning: called from
    imformats>default_formats at line 256 column 11
    imformats at line 79 column 3
    imageIO at line 106 column 11
    imread at line 106 column 30
    //digunakan untuk melihat ukuran image
>> ukuran_image = size(image);
//untuk menampilkan image
>> imshow(image);
>> R(:,:,1);
error: 'R' undefined near line 1 column 1
//membaca nilai R,G,B pada image
>> R = image(:,:,1);
>> G = image(:,:,2);
>> B = image(:,:,3);
//mengubah image ke bentuk keabuan dengan cara mengambil nilai rata-rata RGB nya
>> abu = (R+G+B)/3;
//menampilkan hasil image keabuan
>> imshow(abu);
//membaca image abu
>> F = imread('abu.jpg');
//inisialisai nilai konstanta C1
>> C =0.5
C =  0.50000
//rumus untuk logaritmik
>> LogImage = C*log(F+1);
//tampilkan hasil dari image logaritmik c=0.5
>> imshow(LogImage);
>> C = 0.3
C =  0.30000
>> LogImage = C*log(F+1);
>> LogImage2 = C*log(F+1);
>> imshow(LogImage2);
>> C = 0.1
C =  0.10000
//insialisasi nilai konstanta C2
>> C2 = 0.3
C2 =  0.30000
>> LogImage2 = C2*log(F+1);
>> imshow(LogImage2);
//inisialisai nilai konstanta C3
>> C3 = 0.1
C3 =  0.10000
>> LogImage3 = C3*log(F+1);
>> imshow(LogImage3);
//untuk menampilkan gambar sekaligus 4 kolom dalam satu baris
>> subplot(1,4,1);imshow(F);title('original image abu');
>> subplot(1,4,2);imshow(LogImage);title('keabuan C=0.5');
>> subplot(1,4,3);imshow(LogImage2);title('keabuan C=0.3');
>> subplot(1,4,4);imshow(LogImage3);title('keabuan C=0.1');
//menampilkan histogram dari logaritmik
>> subplot(1,3,1);hist(LogImage);title('Hitogram C=0.5');
>> subplot(1,3,2);hist(LogImage2);title('Hitogram C=0.3');
>> subplot(1,3,3);hist(LogImage3);title('Hitogram C=0.1');
>>