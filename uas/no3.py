class Shape:
    def _init_(self, name):
        self._name = name
        
    def area(self):
        pass

class Square(Shape):
    def _init_(self, length):
        super()._init_("Square")
        self._length = length

    def area(self):
        return self._length * self._length

class Circle(Shape):
    def _init_(self, radius):
        super()._init_("Circle")
        self._radius = radius

    def area(self):
        return 3.14 * (self._radius ** 2)

def get_shape(shape_name):
    if shape_name == "Square":
        return Square(4)
    elif shape_name == "Circle":
        return Circle(7)
    else:
        return None

shapes = ["Square", "Circle", "Triangle"]
for shape in shapes:
    s = get_shape(shape)
    if s:
        print(f"{shape} area: {s.area()}")
    else:
        print(f"{shape} not found.")