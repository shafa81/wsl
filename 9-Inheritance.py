class Plant():

    def __init__(self, nama, jenis_tanaman, jenis_akar):
        self.nama = nama
        self.jenis_tanaman = jenis_tanaman
        self.jenis_akar = jenis_akar

    def cek_nama_tanaman(self):
        print('Nama Tanaman:',self.nama,'\nJenis Tanaman:',self.jenis_tanaman,'\njenis Akar:',self.jenis_akar)

class Nama_Bunga(Plant):
    def Nama_Bunga(self):
        print('Nama Bunga : ')
        pass

Tanaman_1 = Nama_Bunga('Melati','Tanaman Hias','Serabut')
Tanaman_2 = Nama_Bunga('Anggrek','Tanaman Hias','Akar Serabut')
Tanaman_3 = Nama_Bunga('Mawar','Tanaman Hias','Akar Serabut')

Tanaman_1.cek_nama_tanaman()
Tanaman_2.cek_nama_tanaman()
Tanaman_3.cek_nama_tanaman()


import tkinter

main_window = tkinter.Tk()

def event_tekan():
    label2 = tkinter.Label(main_window, text=" BERHASIL DITANAM")
    label2.pack()


label = tkinter.Label(main_window, text="apakah ingin menanam tanaman ini ?")
tombol = tkinter.Button(main_window, text="TANAM !", command = event_tekan)

label.pack()
tombol.pack()
main_window.mainloop()


#Nama : Adinda shafs
#Nim  : 20210801376


class garden (Plant):
    pass

class Anggrek :
    def Menanam(self):
        return 'Berhasil Menanam Anggrek'

class Mawar :
    def Menanam(self):
        return 'Berhasil Menanam Mawar'

class Melati :
    def Menanam(self):
        return 'Berhasil Menanam Melati'


Tanam_Anggrek = Anggrek()
Tanam_Mawar= Mawar()
Tanam_Melati = Melati()

for Tanaman in [Tanam_Anggrek , Tanam_Mawar , Tanam_Melati]:
    print(Tanaman.Menanam())

