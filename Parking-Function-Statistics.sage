############################################################################
## This function takes in a Parking Function and counts the number of peaks.
## We do not allow for peaks at the endpoints.
## Note that we define a peak at index i if for list A, 
## the elements A[i-1], A[i], A[i+1] satisfy A[i-1] < A[i] > A[i+1].
############################################################################
def countPeaks(parking_function: list[int]) -> int:
    count = 0
    for i in range(1, len(parking_function)-1):
        if parking_function[i-1] < parking_function[i] and parking_function[i] > parking_function[i+1]:
            count += 1
    return count
############################################################################
# This function takes in a Parking Function and returns the number of ties.
############################################################################
def countTies(parking_function: list[int]) -> int:
    count = 0
    for i in range(len(parking_function)-1):
        if parking_function[i] == parking_function[i+1]:
            count += 1
    return count

############################################################################
## This function takes in a Parking Function and returns the number of valleys
## Like with counting peaks, we do not allow for valleys at the endpoints.
## Note that we define a valley at index i if for list A, 
## the elements A[i-1], A[i], A[i+1] satisfy A[i-1] > A[i] < A[i+1].
############################################################################
def countValleys(parking_function: list[int]) -> int:

    count = 0
    for i in range(1,len(parking_function)-1):
        if parking_function[i-1] > parking_function[i] and parking_function[i] < parking_function[i+1]:
            count += 1
    return count
############################################################################
## Now we have a means of determining the number of peaks and ties in 
## a parking function. We build the function countPfWithPeaksandTies, which 
## takes in a desired length, number of peaks, and number of ties and returns
## the Parking Functions which satisfy the desired conditions. 
############################################################################
def countPFWithPeaksAndTies(length: int, peaks: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countPeaks(f) == peaks and countTies(f) == ties:
            count += 1
    return count

############################################################################
## This function counts the number of Descents in a Parking Function
############################################################################
def countDes(parking_function: list[int]) -> int:
    count = 0
    for j in range(len(parking_function)-1):
        if pf[j] > pf[j+1]:
            count += 1
    return(count)
############################################################################
## Similar to countPfWithPeaksandTies, the function countPFwithDesTies will
## return the number of parking functions with the desired number of 
## descents and ties
############################################################################
def countPFWithDesTies(length: int, des: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countDes(f) == des and countTies(f) == ties:
            count += 1
    return(count)
############################################################################
## Counts the number of Parking Functions with the desired number of ties.
############################################################################
def countPFWithTies(length: int,ties: int) -> int:
    Parking_Functions = list(ParkingFuntions(length))
    count = 0
    for f in Parking_Functions:
        if countTies(f) == ties:
            count += 1
    return(count)
############################################################################
## This function will return the parking functions with the desired number of 
## valleys and ties. Note that we define a valley at index i if for list A, 
## the elements A[i-1], A[i], A[i+1] satisfy A[i-1] > A[i] < A[i+1].
############################################################################
def countPFWithValleysAndTies(length: int, valleys: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countValleys(f) == valleys and countTies(f) == ties:
            count += 1
    return count
############################################################################
## This is similar to the previous 
def countPFWithPeaksAndValleysAndTies(length: int, peaks: int, valleys: int, ties: int) -> int:
    Parking_Functions = list(ParkingFunctions(length))
    count = 0
    for f in Parking_Functions:
        if countValleys(f) == valleys and countTies(f) == ties and countPeaks(f) == peaks:
            count += 1
    return count


def pfWithPeaksAndTies(length: int,peaks: int,ties: int) -> list[int]:
    Parking_Functions = list(ParkingFunctions(length))
    ret_list = []
    for f in Parking_Functions:
        if countPeaks(f) == peaks and countTies(f) == ties:
            ret_list.append(f)
    return ret_list
