import webbrowser
import tkinter as tk


root = tk.Tk()
root.title('button html')
root.geometry('600x600')
root.title('Freshman Thematic Report-Asia University(Taiwan)')


college = tk.Label(root,text='College of Information and Electrical Engineering',font=44).pack()
subject_Yr1 = tk.Label(root,text='Advanced Computer Programming 1C', font=34).pack()
Major = tk.Label(root, text='Computer Science and Information Engineering 2B').pack()
persion = tk.Label(root, text='Creators').pack()
#Student Number + Student Name
STU_Name1 = tk.Label(root,text='109021153 Man Sze, Lam').pack()
STU_Name2 = tk.Label(root,text='110021153黃宇辰').pack()

def button_event():
   # from https://stackoverflow.com/questions/22445217/python-webbrowser-open-to-open-chrome-browser
   url = 'http://linminshih.pythonanywhere.com/'
   # MacOS
   chrome_path = 'open -a /Applications/Google\ Chrome.app %s'

   # Windows
   chrome_path = 'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s'



   webbrowser.get(chrome_path).open(url)

btn = tk.Button(root, text='Link to Python Flask!', command=button_event)
btn.pack()
data = tk.Label(root, text='14 Jun 2022').pack()
root.mainloop()
