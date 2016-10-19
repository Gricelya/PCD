//berfungsi untuk membaca image abu
>> image = imread('abu.jpg');
//berfungsi untuk menampilkan image
>> imshow(image);
//untuk melakukan penambahan 80 terhadap image
>> keabuan_a = image + 80;
untuk melakukan pengurangan 80 terhadap image
>> keabuan_b = image - 80;
//menampilkan image hasil penambahan dan pengurangan 
>> imshow(keabuan_a);
>> imshow(keabuan_b);
//perulangan dari nilai i = 1 sampai ke size keabuan_b = 2
>> for i=1:size(keabuan_a,1)-2
for j=1:size(keabuan_b,2)-2
//rumus sobel di ambil dengan matrix 3x3
Gx=((2*keabuan_a(i+2,j+1)+keabuan_a(i+2,j)+keabuan_a(i+2,j+2))-(2*keabuan_a(i,j+1)+keabuan_a(i,j)+keabuan_a(i,j+2)));
Gy=((2*keabuan_a(i+1,j+2)+keabuan_a(i,j+2)+keabuan_a(i+2,j+2))-(2*keabuan_a(i+1,j)+keabuan_a(i,j)+keabuan_a(i+2,j)));
B(i,j) = sqrt(Gx.^2 +Gy.^2);
end
end
>> for i=1:size(keabuan_b,1)-2
for j=1:size(keabuan_b,2)-2
//perulangan dari nilai i = 1 sampai ke size keabuan_b = 2
Gx=((2*keabuan_b(i+2,j+1)+keabuan_b(i+2,j)+keabuan_b(i+2,j+2))-(2*keabuan_b(i,j+1)+keabuan_b(i,j)+keabuan_b(i,j+2)));
Gy=((2*keabuan_b(i+1,j+2)+keabuan_b(i,j+2)+keabuan_b(i+2,j+2))-(2*keabuan_b(i+1,j)+keabuan_b(i,j)+keabuan_b(i+2,j)));
D(i,j
D(i,j) = sqrt(Gx.^2 +Gy.^2);
parse error:

  syntax error

>>> D(i,j) = sqrt(Gx.^2 +Gy.^2);
    ^

>> D(i,j) = sqrt(Gx.^2 +Gy.^2);
//perulangan dari nilai i = 1 sampai ke size keabuan_b = 2
>> for i=1:size(keabuan_b,1)-2
for j=1:size(keabuan_b,2)-2
//rumus sobel di ambil dengan matrix 3x3
Gx=((2*keabuan_b(i+2,j+1)+keabuan_b(i+2,j)+keabuan_b(i+2,j+2))-(2*keabuan_b(i,j+1)+keabuan_b(i,j)+keabuan_b(i,j+2)));
Gy=((2*keabuan_b(i+1,j+2)+keabuan_b(i,j+2)+keabuan_b(i+2,j+2))-(2*keabuan_b(i+1,j)+keabuan_b(i,j)+keabuan_b(i+2,j)));
D(i,j) =sqrt(Gx.^2+Gy.^2);
end
end
//berfungsi untuk menampilkan hasil sobel
>> subplot(1,2,1);imshow(B);title('sobel A');
>> subplot(1,2,2);imshow(D);title('sobel B');
>>