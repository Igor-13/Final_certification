
class Pets:
    def __init__(self, name_pets, birth, command):
        self._pets1_name = name_pets
        self._date_of_birth = birth 
        self.command = command

    def command(self, command):
        print(command)

    def add_animal(self, param, name):
        Counter.__add__()
        if param == 'dog':
            Dogs.name_dog = name
        elif param == 'cat':
            Cats.name_cat = name
        else:
            Hamster.name_hamster = name

    def add_command(self, command_add):
        Pets.command = command_add

    def print_command(self, name):
        if name == 'dog':
            print(Dogs.command)
        elif name == 'cat':
            print(Cats.command)
        else:
            print(Hamster.command)


class Pack_animals:
    def __init__(self, name_pack_animals, birth, command):
        self._pets1_name = name_pack_animals
        self._date_of_birth = birth 
        self.command = command

    def command(self, command):
        print(command)
    

    def add_animal(self, param, name):
        Counter.__add__()
        if param == 'horses':
            Horses.name_horses = name
        elif param == 'camels':
            Camels.name_camels = name
        else:
            Donkeys.name_donkeys = name

    def add_command(self, command_add):
        Pack_animals.command = command_add

    def print_command(self, name):
        if name == 'horses':
            print(Horses.command)
        elif name == 'camels':
            print(Camels.command)
        else:
            print(Donkeys.command)

class Dogs(Pets):
    def __init__(self, name_dog):
        self.name_dog = name_dog
        

class Cats(Pets):
    def __init__(self, name_cat):
        self.name_cat = name_cat
        
class Hamster(Pets):
    def __init__(self, name_hamster):
        self.name_hamster = name_hamster
        
        
class Horses(Pack_animals):
    def __init__(self, name_horses):
        self.name_horses = name_horses

class Camels(Pack_animals):
    def __init__(self, name_camels):
        self.name_camels = name_camels
        
class Donkeys(Pack_animals):
    def __init__(self, name_donkeys):
        self.name_donkeys = name_donkeys

class Counter:
    idx = int(0) 
    def __add__(self):
        idx += 1