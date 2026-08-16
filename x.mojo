from std.sys import has_accelerator

def main():
    # A comptime value is computed before the program runs
    comptime size:Int = 1024//32
    print(size)

    # One can use a comptime value as a type alias
    comptime Float16 = SIMD[DType.float16 , 1]
    comptime UInt8 = SIMD[DType.uint8 , 1]

    var x:Float16 = 0
    print(x)

    comptime if has_accelerator:
        print("GPU path")
    else:
        # GPU branch never compiled into the binary
        print("CPU path")
