/*Queue test */
package aui;
import java.util.*;
public class Main {
   public static void main(String args[]) 
   { 
	//   Scanner scan = new Scanner(System.in);
	   // PORTAL selenium = new PORTAL();
    // scan.close();
	//   Call_Script script = new Call_Script();
	  // Integer y=20;
	//   script.Recieve_parameters(y);
	   //System.out.println(y);
	   Queue queue = new Queue();
	   		//queue.debug();
	   queue.inQueue("one");
  		queue.debug();
	   queue.inQueue("two");
  		queue.debug();
	   queue.inQueue("three");
  		queue.debug();
  		System.out.println("1 Deq"+queue.dequeue());
   		queue.debug();
  		System.out.println("2 Deq"+queue.dequeue());
   		queue.debug();
  		System.out.println("3 Deq"+queue.dequeue());
      	queue.debug();
 	   queue.inQueue("four");
   		queue.debug();
 	   queue.inQueue("five");
   		queue.debug();
 	   queue.inQueue("six");
 	  queue.debug();
 	   queue.inQueue("7");
 	  queue.debug();
 	   queue.inQueue("8");
 	  queue.debug();
 	   queue.inQueue("9");
 	  queue.debug();
 	   queue.inQueue("10");
 	  queue.debug();
 		System.out.println("Deq"+queue.dequeue());
   		queue.debug();
  		System.out.println("Deq"+queue.dequeue());
   		queue.debug();
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		System.out.println("Deq"+queue.dequeue());
  		for(int i=0;i<10;i++)
  		System.out.println(queue.processes[i]);
 	  /*
	   for(;;) 
	   {
	   System.out.println("hello");
	   
	   }
*/

   }

}




