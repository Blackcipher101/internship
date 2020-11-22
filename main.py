import pickle
import csv
csv_columns = ['Name','Number','Points']
csv_columns2 = ['category','Name','code','price','date of arrival','expiry','quantity','Company','model']
csv_file = "Names.csv"
csv_file2 = "Products.csv"


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

    def get_name(self):
        return self.name

    def get_code(self):
        return self.code


class grocery(products):
    def __init__(self,name,price,code,date_of_arrival,exipry,quantity):
        super().__init__(name,price,code)
        self.date_of_arrival=date_of_arrival
        self.exipry=exipry
        self.quantity=quantity
    
class electronics(products):
    def __init__(self,name,price,code,Company,model,quantity):
        super().__init__(name,price,code)
        self.Company=Company
        self.model=model


x="10"

while True:
    print("1.Add User\n2.Add products\n3.makebill")
    print("\nEnter option")
    option=input()
    if option=="1":
        name=input("Enter name: ")
        number=input("Enter number: ")
        user=User(name,number)
        dict_data = [
            {'Name': user.name, 'Number': user.number, 'Points':user.points},
            ]
        with open(csv_file, 'a') as csvfile:                                            #use this to write to database
            writer = csv.DictWriter(csvfile, fieldnames=csv_columns)
            writer.writeheader()
            for data in dict_data:
                writer.writerow(data)
    print(option)
    if option == "2":
        print("#")
        category=input("Enter catergory: \n1.grocery\n2.electronics\n3.others")
        if category=="1":
            Grocery=grocery("cabbage","32","1435","12/01/2017","12/02/2017","3kg")
            name=Grocery.get_name()   
            name=Grocery.get_name()
            code=Grocery.get_code()
            price=Grocery.get_price()

            dict_data = [
            {'category':'grocery','Name': name, 'code': code, 'price':price, 'date of arrival': Grocery.date_of_arrival,'expiry':Grocery.exipry,'quantity':Grocery.quantity},
            ]
            with open(csv_file2, 'a') as csvfile:                                            #use this to write to database
                writer = csv.DictWriter(csvfile)
                writer.writeheader()
                for data in dict_data:
                    writer.writerow(data)
            
        
    if option == "3":
        while True:
                code=input("enter code")
                csvfile=open(csv_file2,'r', newline='')
                obj=csv.reader(csvfile)
                total=0
                print(obj)
                for row in obj:
                    if code==row[2]:
                        total+=int(row[4])
                        print("| {} | {} | {} | {} |".format())

    if option=="4":
        break




