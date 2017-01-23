
// GCD Recursive Approach
func gcd(_ num1: Int, _ num2: Int) -> Int{
    let rem = (num1 % num2)
    if rem != 0 {
        return gcd(num2, rem)
    } else {
        return num2
    }
}

// GCD Iterative Approach
/*func gcd(_ num1: Int, _ num2: Int) -> Int {
    var a = 0
    var b = max(num1, num2)
    var rem = min(num1, num2)
    
    while rem != 0 {
        a = b
        b = rem
        rem = (a % b)
    }
    return b
}*/

// LCM
func lcm(_ num1: Int, _ num2: Int) -> Int {
    return ((num1 * num2) / gcd(num1, num2))
}


