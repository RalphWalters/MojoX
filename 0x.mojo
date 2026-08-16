def main():
    comptime for i in range(1,4):
        # element count 'i' is a type parameter and argument
        var v = InlineArray[Int , i](fill=i)
        print(v)
