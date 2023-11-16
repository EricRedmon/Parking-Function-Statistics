def countPeaks(parking_function: list) -> int:
    count = 0
    for i in range(1, len(parking_function)-1):
        if parking_function[i-1] < parking_function[i] and parking_function[i] > parking_function[i+1]:
            count += 1
    return count

def countTies(parking_function: list) -> int:
    count = 0
    for i in range(len(parking_function)-1):
        if parking_function[i] == parking_function[i+1]:
            count += 1
    return count

def countValleys(parking_function: list) -> int:
    count = 0
    for i in range(1,len(pf)-1):
        if parking_function[i-1] > parking_function[i] and parking_function[i] < parking_function[i+1]:
            count += 1
    return count

def countPfWithPeaksAndTies(length: int, peaks: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countPeaks(f) == peaks and countTies(f) == ties:
            count += 1
    return count

def countDes(parking_function: list) -> int:
    count = 0
    for j in range(len(parking_function)-1):
        if pf[j] > pf[j+1]:
            count += 1
    return(count)

def countPFWithDesTies(length: int, des: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countDes(f) == des and countTies(f) == ties:
            count += 1
    return(count)

def countPFWithTies(length: int,ties: int) -> int:
    Parking_Functions = list(ParkingFuntions(length))
    count = 0
    for f in Parking_Functions:
        if countTies(f) == ties:
            count += 1
    return(count)

def countPfWithValleysAndTies(length: int, valleys: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countValleys(f) == valleys and countTies(f) == ties:
            count += 1
    return count

def countPfWithPeaksAndValleysAndTies(length: int, peaks: int, valleys: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countValleys(f) == valleys and countTies(f) == ties and countPeaks(f) == peaks:
            count += 1
    return count

def pfWithPeaksAndTies(length: int,peaks: int,ties: int) -> list:
    Parking_Functions = list(ParkingFunctions(length))
    ret_list = []
    for f in Parking_Functions:
        if countPeaks(f) == peaks and countTies(f) == ties:
            ret_list.append(f)
    return ret_list
