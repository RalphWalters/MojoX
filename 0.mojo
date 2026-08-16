# default immutable reference
def print_list(list:List[Int]):
    print(list)

# mutable reference
def mutate_list(mut list:List[Int]):
    list.append(5)

# argument exclusivity
def combine_elements(mut a:List[Int] , b:List[Int]):
    # append 0th element of b to list a
    a.append(b[0])

# program entry point
def main():
    var values:List[Int] = [1,2,3,4]
    var new_list = values.copy()
    combine_elements(values , new_list)
    print_list(values)
