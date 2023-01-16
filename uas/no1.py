class Parent:
    def _init_(self, name):
        self.name = name
    
    def display(self):
        print("Name:", self.name)

class Child(Parent):
    def _init_(self, name, age):
        self.age = age
        Parent._init_(self, name)
    
    def display(self):
        Parent.display(self)
        print("Age:", self.age)

c = Child("John", 25)
c.display()