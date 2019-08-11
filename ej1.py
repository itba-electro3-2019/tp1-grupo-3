import sys

ARG_LEN = 3
FILE_DIR_INDEX = 0
LOWER_LIMIT = 0
UPPER_LIMIT = 64
SIGN_BIT_INDEX = 0
INTEGER_PART_INDEX = 1
NONINTEGER_PART_INDEX = 2

class RangeResCalculator:
    arguments = sys.argv
    print(arguments)
    def validateArguments(self):
        self.arguments.pop(0)                         #Remuevo la direccion del archivo
        if (len(self.arguments) != ARG_LEN):          #Me fijo que haya 3 argumentos restantes
            print("not arglen")
            return False
        for x in self.arguments:
            if not (x.isnumeric()):                                 #Me fijo que sean numeros
                print("notnumeric")
                return False
            if not (int(x) >= LOWER_LIMIT):           #Me fijo que cada numero sea mayor a un limite inferior
                print("not>=0")
                return False
            if not (int(x) <= UPPER_LIMIT):           #Me fijo que cada numero sea menor a un limite superior
                print("not<=64")
                return False
        if ((self.arguments[SIGN_BIT_INDEX] == '1') or (self.arguments[SIGN_BIT_INDEX] == '0')): #Me fijo que el bit de signo sea 1 o 0
            pass
        if ((self.arguments[SIGN_BIT_INDEX] == '0') and (self.arguments[INTEGER_PART_INDEX] == '0') and (self.arguments[NONINTEGER_PART_INDEX] == '0')):
            return False #Si no se posee
        else:    
            print("signbit not 0 or 1")
            return False
        return True                             #Se cumple la validacion

        
    def calculateRange(self):
        if (int(self.arguments[SIGN_BIT_INDEX]) == 0):
            print("unsignedrange")
            print((2**int(self.arguments[INTEGER_PART_INDEX]), "-", (1/2)**int(self.arguments[NONINTEGER_PART_INDEX])))
            return ((2**int(self.arguments[INTEGER_PART_INDEX]))-((1/2)**int(self.arguments[NONINTEGER_PART_INDEX])))
        else:
            print("signedrange")
            return (((2**int(self.arguments[INTEGER_PART_INDEX]))-((1/2)**int(self.arguments[NONINTEGER_PART_INDEX])))+(2**int(self.arguments[INTEGER_PART_INDEX])))

    def calculateResolution(self):    
        return (1/2)**int(self.arguments[NONINTEGER_PART_INDEX])
    
    
    def printResult(self):
        if(self.validateArguments()):
            print("Res: ", self.calculateResolution(),"| Ran: ", self.calculateRange())
        else:
            print("ERROR")

calc = RangeResCalculator()
calc.printResult()