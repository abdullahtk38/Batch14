    Set<String> fruitSet = new Set<String>();
    fruitSet.add('apple');
    fruitSet.add('banana');
    fruitSet.add('orange');
    fruitSet.add('strawberry'); 
   
    
    for(String fruit: fruitSet){
    System.debug('fruit name : '+fruit);  
   }

    //Solution 2
    Integer size = fruitSet.size();
    System.debug('fruitSet size : '+fruitSet.size());
    System.debug('fruitSet size : '+size);

    //Solution 3
    fruitSet.add('Apricot');
    System.debug('newfruitSet  : '+ fruitSet);

    //Solution 4
    Boolean containsApricot = fruitSet.contains('Apricot');
    System.debug('containsApricot  : '+fruitSet.contains('Apricot'));
    System.debug('containsApricot  : '+containsApricot);

    //Solution 5
    Boolean result = !fruitSet.isEmpty();
    System.debug('fruitSet : '+result);


   