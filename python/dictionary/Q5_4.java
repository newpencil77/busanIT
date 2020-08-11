//모든 값의 총합과 평균


public class Q5_4{
    public static void main(String[] args) {
        int[][] arr = {
            {5, 5, 5, 5, 5},
            {10, 10, 10, 10, 10},
            {20, 20, 20, 20, 20},
            {30, 30, 30, 30, 30}
        };
        // 2차원 배열 arr

        int total = 0;
        // float average = 0;
        int count = 0;

        // 2차원 배열의 경우 for each 문을 쓸 수 있나?
        // 이중 for문 사용?
        
        for(int i = 0; i<arr.length; i++)
        {
            for(int j= 0; j<arr[i].length; j++)
            {
                total += arr[i][j];
                count ++;
            }
        }
        
        
        
        // 아니면 이렇게 생각해볼수도 있겠음
        // 각 행의 평균을 더한다음에 행의 갯수만큼 나누는 것. 두번 일이지 않나?
        
        float average = total/count; //그렇지, 0으로 나눌 수 없지.
        // 왜 소숫점 아래가 절삭됐지?
        System.out.println("total=" + total);
        System.out.println("average=" + average);
        
        
        
        
        
        
    }
}