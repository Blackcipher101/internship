import pickle
import csv
csv_columns = ['Name','Number','Points']

csv_file = "Names.csv"


class User:
    def __init__(self,name,number): #Creates user
        self.name=name
        self.number=number
        self.points=0
    def update(self,points): #Updates points
        self.points=self.points+points
class products:
    def __init__(self,name,price,code):
        self.name=name
        self.price=price
        self.code=code

    def get_price(self):
        return self.price


class grocery(products):
    def __init__(self,name,price,code,date_of_arrival,exipry,quantity):
        super().__init__(name,price,code)
        self.date_of_arrival=date_of_arrival
        self.exipry=exipry
    
class electronics(products):
    def __init__(self,name,price,code,Company,model):
        super().__init__(name,price,code)
        self.Company=Company
        self.model=model


x="10"

while True:
    print("1.Add User\n2.Add products\n10.exit")
    print("\nEnter option")
    option=input()
    if option=="1":
        name=input("Enter name: ")
        number=input("Enter number: ")
        user=User(name,number)
        dict_data = [
            {'Name': user.name, 'Number': user.number, 'Points':user.points},
            ]
        with open(csv_file, 'w+') as csvfile:                                            #use this to write to database
            writer = csv.DictWriter(csvfile, fieldnames=csv_columns)
            writer.writeheader()
            for data in dict_data:
                writer.writerow(data)
        csvfile=open(csv_file,'r', newline='')
        obj=csv.reader(csvfile)
        for row in obj:
            print (row)
    if option=="2":
        category=input("Enter catergory: \n1.grocery\n2.electronics\n3.others")
        if category=="1":
            Grocery=grocery("cabbage","32","1435","12/01/2017","12/02/2017","3kg")
            print(Grocery.get_price())
        


    if option=="3":
        break




