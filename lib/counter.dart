class Counter{
  int _count = 0;
  int get count => _count;

  void increment(){
    _count+=1;
  }
  void decrement(){
    _count--;
  }
}