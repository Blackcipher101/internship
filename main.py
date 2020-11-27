import matplotlib.pyplot as plt
import csv
csv_columns = ['Name','Number','Points']
csv_columns2 = ['category','Name','code','price','date of arrival','expiry','quantity','Company','model']
csv_file = "Names.csv"
csv_file2 = "Products.csv"
csv_file3="Sales.csv"
csv_columns3 = ['value','day']


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
        self.quantity=quantity


x="10"

while True:
    print("1.Add User\n2.Add products\n3.Makebill\n4.Sale Graph\n5.quit")
    print("\nEnter option")
    option=input()
    if option=="1":
        name=input("\n\nEnter name: ")
        number=input("\n\nEnter number: ")
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
        category=input("\n\nEnter catergory: \n1.grocery\n2.electronics\n")
        if category=="1":
            name=input("\ngrocery name: ")
            price=input("\nprice: ")
            code=input("\ncode: ")
            arrival=input("\narrival date: ")
            expiry=input("\nexipry date: ")
            quantity=input("\nquantity: ")
            Grocery=grocery(name,price,code,arrival,exipry,quantity)
            name=Grocery.get_name()   
            code=Grocery.get_code()
            price=Grocery.get_price()

            dict_data = [
            {'category':'grocery','Name': name, 'code': code, 'price':price, 'date of arrival': Grocery.date_of_arrival,'expiry':Grocery.exipry,'quantity':Grocery.quantity},
            ]
            with open(csv_file2, 'a') as csvfile:                                            #use this to write to database
                writer = csv.DictWriter(csvfile,fieldnames=csv_columns2)
                writer.writeheader()
                for data in dict_data:
                    writer.writerow(data)
            print("Done\n\n\n")
        if category=="2":
            name=input("\nelectronic name: ")
            price=input("\nprice: ")
            code=input("\ncode: ")
            Company=input("\nCompany: ")
            Model=input("\nModel: ")
            quantity=input("\nquantity: ")
            Elect=electronics(name,price,code,Company,Model,quantity)
            name=Elect.get_name()   
            code=Elect.get_code()
            price=Elect.get_price()

            dict_data = [
            {'category':'Electronics','Name': name, 'code': code, 'price':price, 'Company': Elect.Company,'model':Elect.model,'quantity':Elect.quantity},
            ]
            with open(csv_file2, 'a') as csvfile:                                            #use this to write to database
                writer = csv.DictWriter(csvfile,fieldnames=csv_columns2)
                writer.writeheader()
                for data in dict_data:
                    writer.writerow(data)
            print("Done\n\n")
            
    entries=[]
    entry=[]
    if option == "3":
        total=0
        flag=1
        User=input("User: ")
        csvfile=open(csv_file,'r', newline='')
        obj=csv.reader(csvfile)
        for row in obj:
            if row[0]==User:
                flag=0
        
        while flag==0:
                code=input("enter code else press q to make total: ")
                if code=='q':
                    break
                csvfile=open(csv_file2,'r', newline='')
                obj=csv.reader(csvfile)
                i = 0
                for row in obj:
                    entries.append(row)
                    if code==entries[i][2]:
                        if entries[i][6]!='0':
                            total+=int(row[3])
                            print("--------------------{} | {} | {} | {} --------------------------\n\n\n".format(row[0],row[1],row[2],total))
                            introw=int(entries[i][6])
                            introw=introw-1
                            entries[i][6]=introw
                            break
                        else:
                            print("No stock")
                    i=i+1
                with open(csv_file2, 'w') as writeFile:
                    writer = csv.writer(writeFile)
                    writer.writerows(entries)
        day=input("day of sale: ")
        i = 0
        ith=0
        csvfile=open(csv_file,'r', newline='')
        obj=csv.reader(csvfile)
        for row in obj:
            entry.append(row)
            if User==entry[i][0]:
                ith=i
                points=int(entry[i][2])
                points=points+(total/100)
                entry[i][2]=str(points)
                break
            i=i+1
        with open(csv_file, 'w') as writeFile:
            writer = csv.writer(writeFile)
            writer.writerows(entry)
        

        print("you wanna use points(y/n): ")
        choc=input()
        
        if choc=='y':
            total=total-float(entry[ith][2])
        print("----------------Final total----------{}---------------------------------".format(total))
        print("End")
        dict_data = [
            {'value': total, 'day': day},
            ]
        with open(csv_file3, 'a') as csvfile:                                            #use this to write to database
            writer = csv.DictWriter(csvfile,fieldnames=csv_columns3)
            writer.writeheader()
            for data in dict_data:
                writer.writerow(data)
            
        if flag==1:
            print("No user found")

    if option=="4":
        entry=[]
        summmation=0
        days=["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
        values=[]
        csvfile=open(csv_file3,'r', newline='')
        obj=csv.reader(csvfile)
        for row in obj:
            entry.append(row)
        for i in range(len(days)):
            for row in entry:
                if row[1]==days[i]:
                    summmation=summmation+float(row[0])
            values.append(summmation)
            summmation=0
        print(values)
        plt.plot(days, values)
        plt.title('Sales Vs days')
        plt.xlabel('days')
        plt.ylabel('Sales')
        plt.show()





    if option=="5":
        break




