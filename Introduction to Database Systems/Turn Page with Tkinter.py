
import tkinter as tk

root=tk.Tk()
win_title=root.title('Database-109021153')
win_size=root.geometry('500x700')

class mainpage(object):
    def __init__(self, master=None):
        self.root = master 
        self.page = tk.Frame(self.root) 
        self.page.pack() 
        self.Button = tk.Button(self.page, text=u'Login',command=self.secpage) 
        self.Button.grid(column=70,row=9900) 
        self.Button = tk.Button(self.page, text=u'Sign Up',command=self.secpage) 
        self.Button.grid(column=90,row=9900) 
    def secpage(self):
        self.page.destroy()
        secondpage(self.root)
    
  
class secondpage(object):
    def __init__(self, master=None):
        self.root = master
        self.page = tk.Frame(self.root)
        self.page.pack()
        self.Button = tk.Button(self.page, text=u'Logout',command=self.mainpage) 
        self.Button.grid(column=0,row=0) 
        
    def mainpage(self):
        self.page.destroy()
        mainpage(self.root)    
        
mainpage(root)

root.mainloop()