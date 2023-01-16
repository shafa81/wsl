class BankAccount:
    def _init_(self, balance):
        self.__balance = balance # private attribute

    def __check_balance(self): # private method
        if self.__balance < 0:
            print("Warning: Negative balance!")
            
    def deposit(self, amount):
        self.__balance += amount
        self.__check_balance()
        
    def withdraw(self, amount):
        self.__balance -= amount
        self.__check_balance()
        
    def get_balance(self):
        return self.__balance

account = BankAccount(100)
print(account.get_balance()) # 100
account.withdraw(50)
print(account.get_balance()) # 50
account.deposit(75)
print(account.get_balance()) # 125