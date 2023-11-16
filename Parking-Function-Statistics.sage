def countPeaks(pf):
    count = 0
    for i in range(1, len(pf)-1):
        if pf[i-1] < pf[i] and pf[i] > pf[i+1]:
            count += 1
    return count

def countTies(pf):
    count = 0
    for i in range(len(pf)-1):
        if pf[i] == pf[i+1]:
            count += 1
    return count

def countValleys(pf):
    count = 0
    for i in range(1,len(pf)-1):
        if pf[i-1] > pf[i] and pf[i] < pf[i+1]:
            count += 1
    return count

def countPfWithPeaksAndTies(n, peaks, ties):
    PF = list(ParkingFunctions(n))
    count = 0
    for f in PF:
        if countPeaks(f) == peaks and countTies(f) == ties:
            count += 1
    return count

def countDes(pf: list):
    count = 0
    for j in range(len(pf)-1):
        if pf[j] > pf[j+1]:
            count += 1
    return(count)

def countPFWithDesTies(n: int, des: int, ties: int) -> int:
    PF = list(ParkingFunctions(n))
    count = 0
    for f in PF:
        if countDes(f) == des and countTies(f) == ties:
            count += 1
    return(count)

def countPFWithTies(n,ties):
    PF = list(ParkingFuntions(n))
    count = 0
    for f in PF:
        if countTies(f) == ties:
            count += 1
    return(count)

def countPfWithValleysAndTies(n, valleys, ties):
    PF = list(ParkingFunctions(n))
    count = 0
    for f in PF:
        if countValleys(f) == valleys and countTies(f) == ties:
            count += 1
    return count

def countPfWithPeaksAndValleysAndTies(n, peaks, valleys, ties):
    PF = list(ParkingFunctions(n))
    count = 0
    for f in PF:
        if countValleys(f) == valleys and countTies(f) == ties and countPeaks(f) == peaks:
            print(f)
            count += 1
    return count

def pfWithPeaksAndTies(n: int,peaks: int,ties: int) -> list:
    PF = list(ParkingFunctions(n))
    ret_list = []
    for f in PF:
        if countPeaks(f) == peaks and countTies(f) == ties:
            ret_list.append(f)
    return ret_list