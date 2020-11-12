# 3. W dowolnie wybranym języku zaimplementować „PUB” .
# W pubie jest N klientów( klienci to utworzone wątki systemu) 
# Każdy klient musi wypić 5 piw. Wypicie piwa zajmuje 4 sekundy nalanie piwa zajmuje 1 sekundę. 
# W pubie jest 10 kufli klient po wypiciu piwa oddaje kufel , który od razu jest doliczany do puli wolnych kufli. 
# Klient po wypiciu 5 piw odstawia kufel i idzie do domu.
# Gdy nie zostanie już żaden klient Pub zamyka się ( kończy się program)
# Po uruchomieniu powstaje N( podane przez użytkownika ) klientów. 
# Program zwraca stan każdego klienta ( czekam , pije , idę po kolejne, uciekam do domu) wraz ze stanem klienta zwracane jest jego id ( stan i id klienta może być wypisane na terminalu)


class Mug:
    def __init__(self, pouringTime=1):
        self._startTime = 0
        self._isFree = True
        self._pouring = False
        self._poured = False
        self._pouringTime = pouringTime

    def isFree(self):
        return self._isFree

    def switchIsFree(self):
        self._isFree = not self._isFree

    def isPoured(self):
        return self._poured

    def switchPoured(self):
        self._poured = not self._poured

    def pouring(self, time):
        if not self._pouring and not self._poured:
            self._startTime = time
            self._pouring = True
        if time - self._startTime >= self._pouringTime:
            self._pouring = False
            self._poured = True


class Client:
    def __init__(self, id, howManyBeer=5, drinkTime=4):
        self._id = id  # FIXME: brak sprawdzanie unikalności id
        self._startTime = 0
        self._mug = None
        self._howManyBeer = howManyBeer
        self._drinkTime = drinkTime
        self.state = "Czekam"

    def getID(self):
        return self._id

    def getMug_Delete(self):
        return self._mug

    def getHowManyBeer(self):
        return self._howManyBeer

    def __askForMug(self, listOfMugs):
        for mug in listOfMugs:
            if mug.isFree() and mug.isPoured():
                self._mug = mug
                mug.switchIsFree()
                break

    def drinking(self, time, listOfMugs):
        if self._mug is None:
            self.__askForMug(listOfMugs)
            if self._mug:
                self._startTime = time
                self.state = "Piję"
        else:
            if time - self._startTime >= self._drinkTime:
                self._mug.switchIsFree()
                self._mug.switchPoured()
                self._mug = None
                self._howManyBeer -= 1
                self.state = "Idę po kolejne"
                if self._howManyBeer == 0: self.state = "Idę do domu"


class Pub:
    def __init__(self, numOfMug=10, dt=1e-2):
        self._time = 0
        self._dt = dt
        self._listOfClient = []
        self._listOfMugs = [Mug() for i in range(numOfMug)]

    def simulation(self):
        print(
            "Nie wiem, widziałem przeciwskazań w zadaniu, aby nie można było napełniać wszystkich kuflów jednocześnie")
        if self._listOfClient == []:
            N = input("Podaj liczbę klientów: ")
            while not N.isdigit():
                N = input("Wartość musi być typu int: ")
            self._listOfClient = [Client(i) for i in range(int(N))]

        while self._listOfClient:
            self._time += self._dt
            deleteList = []

            print("\nCzas: " + str(self._time))
            # Sprawdzanie czy kończy się już nalewać
            for mug in self._listOfMugs:
                mug.pouring(self._time)
            # Klienci piją
            for client in self._listOfClient:
                client.drinking(self._time, self._listOfMugs)
                print(str(client.getID()) + " : " + client.state)
                if client.getHowManyBeer() == 0:
                    deleteList.append(client)
            # Sprawdzanie czy barman może napęłnić piwo zaraz po opróżnieniu
            for mug in self._listOfMugs:
                mug.pouring(self._time)
            for client in deleteList:
                self._listOfClient.remove(client)


p = Pub(10, 1)
p.simulation()
input("The pub is closed. Good bay.")