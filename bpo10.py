# Parent class
class Plant(object):
    
    def _init_(self, JumlahAir, JumlahPupuk, StatusTumbuh):
        self.JumlahAir = JumlahAir
        self.JumlahPupuk = JumlahPupuk
        self.StatusTumbuh = StatusTumbuh

    def Tumbuh(self):
        if self.StatusTumbuh < 4:
            self.JumlahAir -= 3
            self.JumlahPupuk -= 1
            self.StatusTumbuh += 1

    def cekKondisiTumbuh(self):
        if self.JumlahAir >= 3 and self.JumlahPupuk >= 1:
            Plant.Tumbuh()
    
    def BeriAir(self):
        self.JumlahAir += 1
        Plant.cekKondisiTumbuh()
    
    def BeriPupuk(self):
        self.JumlahPupuk += 1
        Plant.cekKondisiTumbuh()
    
    def getStatusTumbuhText(self):
        if self.StatusTumbuh == 0:
            print("Benih") 
        elif self.StatusTumbuh == 1:
            print("Tunas")
        elif self.StatusTumbuh == 2:
            print("Tanaman Kecil")
        elif self.StatusTumbuh == 3:
            print("Tanaman Dewasa")
        else:
            print("Berbunga")

    def DisplayPlant(self):
        # print(Plant.getStatusTumbuhText)
        print("Jumlah Air \t: {} \nJumlah Pupuk \t: {}".format(self.JumlahAir, self.JumlahPupuk))

    def getJumlahAir(self):
        return self.JumlahAir
    
    def setJumlahAir(self, n):
        self.JumlahAir = n
    
    def getJumlahPupuk(self):
        return self.JumlahPupuk
    
    def setJumlahPupuk(self, n):
        self.JumlahPupuk = n 
    
    def getStatusTumbuh(self):
        return self.StatusTumbuh
    
    def setStatusTumbuh(self, n):
        self.StatusTumbuh = n

# child class
class Anggrek(Plant):

    def _init_(self, JumlahAir, JumlahPupuk, StatusTumbuh, Jenis):
        self.Jenis = Jenis
        Plant._init_(self, JumlahAir, JumlahPupuk, StatusTumbuh)
    
    def anggrekTumbuh(self):
        if self.StatusTumbuh < 4:
            self.JumlahAir -= 3
            self.JumlahPupuk -= 2
            self.StatusTumbuh += 1
    
    def cekKondisiTumbuh(self):
        if self.JumlahAir >= 3 and self.JumlahPupuk >= 2:
            Anggrek.anggrekTumbuh()
    
    def getJenis(self):
        return self.Jenis

# child class
class Mawar(Plant):

    def _init_(self, JumlahAir, JumlahPupuk, StatusTumbuh, Jenis):
        self.Jenis = Jenis
        Plant._init_(self, JumlahAir, JumlahPupuk, StatusTumbuh)
    
    def mawarTumbuh(self):
        if self.StatusTumbuh < 4:
            self.JumlahAir -= 3
            self.JumlahPupuk -= 1
            self.StatusTumbuh += 1
    
    def cekKondisiTumbuh(self):
        if self.JumlahAir >= 3 and self.JumlahPupuk >= 1:
            Mawar.mawarTumbuh()
    
    def getJenis(self):
        return self.Jenis
 
# child class
class Melati(Plant):

    def _init_(self, JumlahAir, JumlahPupuk, StatusTumbuh, Jenis):
        self.Jenis = Jenis
        Plant._init_(self, JumlahAir, JumlahPupuk, StatusTumbuh)
    
    def melatiTumbuh(self):
        if self.StatusTumbuh < 4:
            self.JumlahAir -= 3
            self.JumlahPupuk -= 1
            self.StatusTumbuh += 1
    
    def cekKondisiTumbuh(self):
        if self.JumlahAir >= 3 and self.JumlahPupuk >= 1:
            Melati.melatiTumbuh()
    
    def getJenis(self):
        return self.Jenis
 


Tanaman1 = Anggrek(1, 2, 3, 'Anggrek')
print("Jenis Tanaman \t: {}".format(Tanaman1.Jenis))
Tanaman1.getStatusTumbuhText()
Tanaman1.DisplayPlant()

Tanaman2 = Mawar(1, 4, 2, 'Mawar')
print("\nJenis Tanaman \t: {}".format(Tanaman2.Jenis))
Tanaman2.getStatusTumbuhText()
Tanaman2.DisplayPlant()

Tanaman3 = Melati(3, 1, 1, 'Melati')
print("\nJenis Tanaman \t: {}".format(Tanaman3.Jenis))
Tanaman3.getStatusTumbuhText()
Tanaman3.DisplayPlant()