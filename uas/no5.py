import tkinter as tk

root = tk.Tk()
root.title("Simple GUI")

label = tk.Label(root, text="Hello, Tkinter!")
label.pack()

button = tk.Button(root, text="Exit", command=root.destroy)
button.pack()

root.mainloop()