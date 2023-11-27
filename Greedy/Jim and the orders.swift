import Foundation

/*
 * Complete the 'jimOrders' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts 2D_INTEGER_ARRAY orders as parameter.
 */

func jimOrders(orders: [[Int]]) -> [Int] {
    var orderTimes = [(time: Int, index: Int)]()

    for (index, order) in orders.enumerated() {
        let time = order[0] + order[1]
        orderTimes.append((time: time, index: index + 1))
    }

    print(orderTimes)

    orderTimes.sort { $0.time < $1.time || ($0.time == $1.time && $0.index < $1.index) }

    return orderTimes.map { $0.index }
}

// 예제 사용
print(jimOrders(orders: [[1, 1], [1, 1]])) // 예상 출력: [1, 2]


print(jimOrders(orders: [[1,1], [1,1]]))