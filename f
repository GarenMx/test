// 递归+memorize

var calculated = []

function climbStairs(n) {

    if(n == 1) {
        return 1
    }else if (n == 2) {
        return 2
    }else {
        if(!calculated[n-1]){
            calculated[n-1] = climbStairs(n-1)
        }

        if(!calculated[n-2]){
            calculated[n-2] = climbStairs(n-2)
        }
        return calculated[n-1] + calculated[n-2]
    }

}
