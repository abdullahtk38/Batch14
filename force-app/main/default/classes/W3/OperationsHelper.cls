public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(Decimal d1, Decimal d2){
     decimal largestNumber;
     if(d1 >= d2){
         largestNumber = d1; 
     }else{
         largestNumber = d2;
     }
     return largestNumber;
    }   
    public decimal smallestOutOfThreeNumbers(Decimal c1, Decimal c2, Decimal c3){
       
     Decimal c1c2Min = math.min(c1, c2);
     Decimal c1c2c3Min = Math.min(c1c2Min, c3);
     return c1c2c3Min; 
    }
    public Integer sumofPositiveIntegers(Integer n){
         Integer sum;
         if(n<0){
             sum = null;
             system.debug('We are not calculating the sum for negative numbers');
         } else {
             sum = 0;
             for(Integer i = 1; i <= n; i++){
                 sum = sum + i;
             }
         }
         return sum;
     }
      //Assignment Week 3 Solution part 2.1.a
    public decimal sumofListValues(List<Decimal> values){
        Decimal sum;
        if(values.size() > 0){
            sum = 0;
            for(Decimal val : values){
                sum = sum + val;
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return sum;        
    }
    //Assignment Week 3 Solution part 2.1.b
    public decimal averageOfListValues(List<Decimal> values){
        decimal average;
        if(values.size()>0){
            decimal sum = this.sumofListValues(values);
            average = sum/values.size();
            system.debug('values.size() '+values.size());
        } else {
            system.debug('Please provide values to do the operation');
        }
        return average;
    }
    //Assignment Week 3 Solution part 2.1.c
    public decimal highestOfListValues(List<Decimal> values){
        decimal highestElement;
        if(values.size()>0){
            highestElement = values[0];
            for(Decimal val : values){
                if(val > highestElement){
                    highestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return highestElement;
    }
    //Assignment Week 3 Solution part 2.1.d
    public decimal lowestOfListValues(List<Decimal> values){
        decimal lowestElement;
        if(values.size()>0){
            lowestElement = values[0];
            for(Decimal val : values){
                if(val < lowestElement){
                    lowestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return lowestElement;
    }
    //Assignment Week 3 Solution part 2.2
    public void reverseOrderPrint(List<Object> values){
        if(values.size() > 0){
            for(integer i=values.size()-1; i>=0; i--){
                System.debug(values[i]);
            }
        }
        else {
            system.debug('Please provide values to do the operation');
        }
    }
 }
 