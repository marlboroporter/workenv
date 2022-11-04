* 
```bash
    object Seq extends SeqFactory.Delegate[Seq](List) {  
    can be understand as 
    class Seq(delegate:Delegate) extends SeqFactory.Delegate(delegate) {
    Here object does not have param list and superclasss parameter need to be passed directly to super constructor
    at definition time
    Here "List" singleton object is what object singleton constructor used to pass parameter into super class constructor 
```
