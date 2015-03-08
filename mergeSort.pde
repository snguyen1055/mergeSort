void setup(){
  int[] list = {1,4,3,5,2,6};
  int[] sortedList = mergeSort(list);
  println(sortedList);
}

void draw(){
}

int[] merge(int[] first, int[] second){
  int[] result = new int [first.length + second.length];
  int firstIndex = 0;
  int secondIndex = 0;
  int resultIndex = 0;
  
  while(firstIndex < first.length && secondIndex < second.length){
    if(first[firstIndex] < second[secondIndex]){
      result[resultIndex] = first[firstIndex];
      firstIndex++;
    } else {
      result[resultIndex] = second[secondIndex];
      secondIndex++;
    }
    resultIndex++;
  }
  
  if(secondIndex > second.length){
    //copy the result of the first into result
    arrayCopy(second, secondIndex, result, resultIndex,result.length);
  }
  if(firstIndex > first.length){
    //copy the rest of the second into the result
    arrayCopy(first, firstIndex, result, resultIndex, result.length);
  }
  return result;
}

int[] mergeSort(int[] list){
  
  //basecase
  if (list.length == 1){
    println("basecase");
    return list;
  }
  
  int[] first = new int [list.length/2];
  arrayCopy (list, 0, first, 0, list.length/2);
  int[] second = new int [list.length - list.length/2];
  arrayCopy (list, list.length/2, second, 0, list.length/2);  
  
  mergeSort(first);
  mergeSort(second);
  
  //merge(a,b, list);
  return list;
}



