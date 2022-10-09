print("list daftar nilai mahasiswa")

nim=input("NIM :")
nama=input("Nama Mahasiswa :")
gender=input("Jenis Kelamin :")
date=input("Tanggal Input Nilai :")
matkul=input("Mata Kuliah :")
absen=input("Absensi :")
tugas=input("Tugas :")
uts=input("Nilai UTS :")
uas=input("Nilai UAS :")
na=int(tugas + uas + uts)

print("=======HASIL AKHIR========")

print("Nama :",nim)
print("Nama Mahasiswa :",nama)
print("Jenis Kelamin :",gender)
print("Tanggal Input Nilai :",date)
print("Mata Kuliah :",matkul)
print("Absensi :",absen)
print("Tugas :",tugas)
print("Nilai UTS :",uts)
print("Nilai UAS :",uas)
print("Nilai Akhir :",na)

if  na<=100 >=80:
    print("Grade A")

elif    na<=79.9 >=77:
    print("grade A-")

elif    na<=76.9 >=74:
    print("Grade B+")

elif    na<=73.9 >=71:
    print("Grade B")

elif    na<=70.9 >=68:
    print("Grade B-")

elif    na<=67.9 >=64:
    print("Grade C+")

elif    na<=63.9 >=60:
    print("Grade C")

elif    na<=59 >=50:
    print("Grade D")

elif    na<=49 >=0:
    print("Grade E")

if      na>=("Grade E") <=("Grade C"):
    print("Keterangan : Tidak Lulus")
elif    na>=("Grade C+"):
    print("Keterangan : Lulus")