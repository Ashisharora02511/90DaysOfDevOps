JDK (Java Development Kit) is used to develop Java applications. It contains the JRE, compiler (javac), debugger, and other development tools.
JRE (Java Runtime Environment) is used to run Java applications. It contains the JVM and core Java libraries.
JVM (Java Virtual Machine) is the runtime engine that loads classes, verifies bytecode, manages memory, performs garbage collection, and executes bytecode by converting it into machine code.
: Can you run a Java application without JDK?
Answer: Yes. A compiled Java application can run with a Java runtime. The JDK is needed for development and compilation.
Q: Is JDK platform-independent?
Answer: No. Bytecode is platform-independent, but JDK, JRE, and JVM are platform-dependent because each operating system has its own implementation.
Your production server only has a Java runtime installed. Can you compile your application there?
Answer:No. Compilation requires the JDK because it includes the javac compiler. A runtime is sufficient only to execute already compiled bytecode.
Q: what is class loader?
   - loads the .class file into the memory.When required, the JVM loads their classes.
Q: What happens when we run java Hello?
   -  java Hello -> JVM Starts ->Classloader -> Load Hello.class -> ByteCode Verification -> Linking -> class Intitalization -> main execution -> execution engine -> native machine code.
Q:Explain System.out.println?
 - System is java.lang.System, out is its static PrintStream field representing standard output, and println() is a PrintStream method that writes the value followed by a line terminator.
 - What is System?
  - System is a final utility class from the java.lang package. It provides access to system-level functionality such as standard input/output, system properties, environment variables, and time-related methods.
 - What is out?: out is a public static final field of the System class. Its type is PrintStream, and it represents the standard output stream.
 - What is the type of System.out:PrintStream
 -  Is System.out an object or a reference:System.out is a reference to a PrintStream object.
 - What is println():println() is an instance method of PrintStream.
 - Why is out static?out is static because it is associated with the System class rather than with an instance of System.
 - Why can't we do new System()?System has a private constructor, so application code cannot instantiate it.
Q: Explain Public static void main?
- "public makes the method accessible to the application launcher. static allows it to be invoked without creating an instance of the class. void means it doesn't return a Java value. main is the conventional entry-point method name, and String[] args is an array containing command-line arguments. The parameter name args itself isn't special."
Q; Read Value from dynamically server with out restart?
Q: @RefreshScope:@RefreshScope allows a Spring bean to be refreshed/recreated when the application's configuration is refreshed, so it can receive updated configuration values.
Q: HOw to fix memory leake problem?
"I would first identify which objects are continuously consuming memory and why they are still referenced. Then I would remove unnecessary references or add proper cleanup. Common examples are unbounded collections, caches, ThreadLocal, and listeners."
Q: OOps conecpts?
    - Encapsulation: means wrapping data and the methods that operate on that data inside a class and controlling how that data can be accessed or modified.
	- Is private alone encapsulation:Not completely. private provides access restriction, while encapsulation is the broader design of hiding internal state and exposing controlled behavior.
	- Is encapsulation the same as data hiding:They're closely related, but not exactly identical. Data hiding focuses on restricting access to internal details; encapsulation packages state and behavior together and provides a controlled interface.
	- What is Inheritance in Java?:Inheritance allows one class to acquire the properties and behaviors of another class.
	- "Inheritance allows a class to acquire accessible properties and behavior from another class. In Java, it is achieved using extends for classes. It promotes code reuse and also supports runtime          polymorphism through method overriding."
	- Polymorphism:Polymorphism means one interface/reference can represent different implementations, allowing behavior to vary depending on the object.
	 - Compile-time polymorphism: method overloading
	 - Runtime polymorphism: Polymorphism means one interface/reference can represent different implementations, allowing behavior to vary depending on the object.
	- Abstraction:Abstraction focuses on exposing the required behavior while hiding implementation details. In Java, we commonly achieve abstraction using interfaces and abstract classes."
Q: Diffrence b/w throw and throws?
  - throw is used to explicitly throw an exception from your code.
  - throws is used in a method declaration to tell the caller:this method may throw these exceptions, so you need to deal with them.
Q: Checked vs Unchecked
   - Checked Exception:compiler force you to handle and declare it.
   - unchecked Exception: Compiler doesn't force you to catch or declare them.
Q: Can throw throw multiple exceptions?: a single throw statement throws one exception object? you cannot write: throw new IOException,new SQLException.But you can declare multiple throws.
Q:Can we throw a checked exception without throws?no: gives compile time error .you either handle by try catch and declare by try catch.
Q: What happens if an exception occurs inside finally?The exception from finally propagates outward."If an exception occurs inside the finally block and it is not handled there, that exception will propagate to the caller. If there was already an exception from the try or catch block, the exception from finally can override the original exception."
Q: D/w b/w final,finally,finalize?: final is keyword,finally is a block and finalize is a method.
  - final is a Java keyword used to restrict/change behavior.It can be used with variable, method, and class.
  - Final variable: once assigned you cannot reassign
  - final method: child cannot override
  - final class you cannot extends it.
  - finally is a block used with exception handling.The finally block is generally used for cleanup code, such as closing resources.
  - finalize(): finalize() was a method associated with garbage collection.
  - Can final be used with a constructor?no: A constructor cannot be overridden anyway, so final doesn't make sense.
  - . Can a final method be overloaded?:yes:final prevents overriding, not overloading.
  - . Can finally exist without catch?yes
  - Is finally always executed?:Usually, but don't say always.
Q: ==vs equal
Q: Why String is immutable
 -  What is Immutability?: An object is immutable if, after it is created, its state/content cannot be changed.
 - String s = "Hello";s.concat(" World");System.out.println(s);
 - Why is String immutable?:Reason 1 — String Pool:Java maintains a String Pool to reuse String objects.
    - String s1 = "Hello"; both refer to the same pool.
    - String s2 = "Hello";
- final vs immutability:final controls a reference/variable. Immutability controls the object's state.
-  final means "you cannot change this reference"
  ex: final StringBuilder sb = new StringBuilder("Hello");
  sb.append(" World");   // ✅ allowed
  sb = new StringBuilder("Bye");  // ❌ not allowed
- Immutability means "the object itself cannot change"
  ex: String s = "Hello";
  s.concat(" World");
 System.out.println(s);
Q: How Hash map work internally
 - 1. HashMap stores data as key-value pairs:Internally, HashMap uses an array of buckets.
 - 2. What happens when we do put()?:HashMap first gets the key's hash:
 - 3. HashMap calculates the bucket:HashMap uses the hash to determine which bucket should contain the entry.
 - 4. What if bucket is empty?:HashMap creates a node:
 - 5. What if two keys go to the same bucket?This is called a collision.
 - 6. How does HashMap find the correct key?:This is where hashCode() + equals() are extremely important.
 - 7. Why do we need both hashCode() and equals()?:Hash tells HashMap:"Which bucket should I search?"equals() tells HashMap:"Which exact key is this?"
 - 8. What happens when we put the same key again?:It updates the value:
 - 9. What is load factor?Default HashMap load factor is:0.75
Q: Hash Map vs Concurrent Hash Map?
  - HashMap = normal, not thread-safe
  - Hashtable = thread-safe, but coarse-grained synchronization
  - ConcurrentHashMap = thread-safe + designed for better concurrent performance
                                        hashmap       hashtable      concurrent hashmap
  -       Thread                            no             yes            yes
          Synchronization                   no           method-level    concurrent design
		  Performance in concurrency        _             lower          better
		   null key                         one            no             no
		   null values                      multiples      no              no
 - HashMap ko synchronized bana sakte hain?:Map<String, Integer> map = Collections.synchronizedMap(new HashMap<>());
 - . To phir ConcurrentHashMap ki kya zarurat?:Agar operations synchronize karne ke liye same lock ka contention ho raha hai, threads ko wait karna pad sakta hai.
 - concurrent hash map provide CAS+volatile operations+localized synchronization+bucket-level coordination
 - computeIfAbsent():User cache mein hai to return karo, nahi hai to create karke store karo.
 - "We can make HashMap thread-safe using Collections.synchronizedMap(), but that approach synchronizes map operations and can introduce more contention. ConcurrentHashMap is designed specifically for concurrent access and uses finer-grained concurrency mechanisms such as CAS and localized synchronization. It also provides atomic operations like putIfAbsent() and computeIfAbsent(), which help us safely implement compound operations in concurrent code."
Q: Arrays List Vs LinkedList?
- ArrayList vs LinkedList:ArrayList internally dynamic array use karta hai, while LinkedList internally doubly linked list use karta hai.
- "ArrayList is backed by a dynamic array, whereas LinkedList is implemented as a doubly linked list. ArrayList provides O(1) indexed access, while LinkedList requires traversal and is O(n) for indexed access. ArrayList insertion or removal in the middle generally requires shifting elements, whereas LinkedList can update links in O(1) if the target node is already known. However, finding that node can itself take O(n). ArrayList also generally has better cache locality and lower per-element memory overhead, so it is usually the better default for general list usage."
Q: static keyword?
- Why do we need static?:we want one value share by all objects .we donot want each object has owm copy with sahred value.
- Static variable vs instance variable:Instance variable → object-specific,Static variable → class-level/shared
- Static method: we call that method with class name no need to create object.
- Why can't static method directly access instance variable?: There is no object reference.so which we use.
- But static method CAN access static variable: Because both belong to the class.
- Can static method access instance data indirectly?:yes
- Static block: A static block is executed when the class is initialized by the JVM, before the class is used to create objects / invoke its static members as part of class initialization.
- Why do we use static blocks?: Mostly for static initialization or class-level setup. 
Q: Can we override static methods? :no

Q: Abstarct class vs Interface?
Q: marker interface?
Q: transient keyword?
Q:Comparable vs Comparator?
Q:Diffrence b/w checked exception and unchecked Exception?
Q: What is exception propagation?
Q: Can we have multiple catch block?
Q: What happens if exception occur in finally block?
Q: Can construtor Throw Excpetion?
Q: How do you create a custome exception?
Q: What is try with resources?
Q:Diffrence b/w error andexception?
Q: What is rethrowing an exception?
Q: Best practice for exception handling?
Q: What is multithreading?
Q:D/w thread vs ruunable?
Q: What is synchronization?
Q:What is dead lock how to avoid this?
Q:D/w b/w wait() and sleep()?
Q: what is volatile keyword?
Q:synchronized method vs block?
Q:What is Executor Framework
Q: Callable vs Runnable?
Q: What is thread safe collection?
Q: How do you identify memory leakes?
Q: Stack vs Heap memory?
Q:Cause of out of memory error?
Q:What is weak memory refrence?
Q: How do Analyze Heap dump?
Q:what is metaspace in java 8?
Q: How garbage collector work in java 8?
Q. Minor GC VS Major GC?
@.Spring vs Spring boot?
Q: What is dependency injection?
Q:What is IOC Container?
Q: What is @SprongBootApplication?
Q:@Component vs @Service vs @ Repository
Q: Spring boot Auto Config?
Q: Global Exception Handling?
Q: @Controller Advice?
Q:@Controller Vs RestController?
Q:@AutoWired?
Q: What is @Transactional?
Q: MicroService Architecture
Q:Monolithic vs MicroServices?
Q: What is config server?
Q:What is @refreshScope ?
Q:Eureka Server?
Q: Api Gateway ?
Q: Circuit Breaker?
Q: Resilience4j?
Q: Feign Client?
Q: Saga Pattern?
Q:Lazy Vs Early Loading?
Q: N+1 Problem?
Q: Transactions in springboot?
Q: Optimistic and Pessimistic Lock?
Q: How to  you fix production issue?
Q:Handling High Traffic?
Q:Exception Handling for Rest Api?
Q: Securing Microservices
Q:Ditributed Transactions?
Q:What you understand term of immutability?
Q: Create a immutable class in java with mutable field like date,list of address and hashmap?
Q: Get the triplets with 0 sum not repeated value.
Q:Reverse Words in String?
Q:Find All Duplicates in Array?
Q: Diffrence b/w checked and uncheked exception?
Q: Class hierarchy in exception?
Q;Can you catch unchecked exception?
Q: JVM Exception Handling flow?
Q:Default Exception Handler?
Q:D/w throws and throw?
Q: finally block always execute?
Q:What if boath try and finally have return?
Q:can we have multiple catch exceptions?
Q:D/w finally ,final and finalize?
Q:Can we catch multiple exceptions in one catch?
Q:What is exception propagation?
Q:Can we throw checked exception without throws?
Q:What is stack trace?
Q: Can constructors throw exceptions?
Q:Rules for exceptions handling in method overloading?
Q:Diffrence b/w ==(equality operator) and .equal methods in java?
Q: Behavior with diffrent types?
Q:Longest substrings without repeating a character?
Q:Meraged two array with third one and third array should be sorted?
Q:Givean string compress with total frequency input: aabbaa, output: b2a4
=========================JUnit Interview Quesation==============================================

Q: Why we cannnot use System.out.println for testing purpose?
Q:Why do we use junit ?Who use JUNit more 	devlopers and testters?
Q:diffrence b/w junit4 and junit5.
Q:can we test private methods with juints ?if yes then how?
Q:can we test void methods with juint?
Q:Explain @Mockito and injectMock?
Q: how do you disable a test in Junit?
Q: How do you write test for interfaces?
Q:Explain @BeforeEach and @AfterEach.
Q:What is TDD and BDD Aproach?
=================================================================================================
Q:Given two values a and b, you need to swap witout using third varible in java?
Q:Find Pivot index?Find pivot index of given array of integers nums calulate the pivot index of this array?
Q;Second Highest number in list?
Q: Top k Highest numbers in the list 
Q:Max number using reduce?
Q: Find duplicate in a list?
Q:Partiotion even and odd in alist?
Q:Common elements b/w two lists.
Q:Find first non repeated character in a string?
Q:Find first repeated character in a string?
Q:Reverse a string?
Q:Palindrome of a String ?
Q:Highest Salary of employee?
Q:Second Higest Salary of employee?
Q:Group by dept in a emp list?
Q:Count gender in list of emp?
Q:Find the employee who have same salary?
Q:Convert employee list to map?
Q:Find the employee who joined after a 2010?
Q;Find the employee who have same name?
Q:in given string you have to count vaowels and consonants?
======================Spring boot Annotations  ===========================================================
Q1:Core Spring Annotations?@Component,@Service,@Repository,@Controller,@Rest Controller,@ResponseBody,@Autowired,@Qualifier,@Primary,@Bean,@Scope
@Configuration,@ComponentsScan,@PropertySource,@Value,@Profile,@SpringBootApplication,@EnableautoConfiguration,@ConfigurationProperties,@ConditionalOnProperty,
@RequestMapping,@GetMapping,@PostMapping,@PutMapping,@DeleteMapping,@ReuestParam,@PathVariable,@RequestBody,@ResponseBody,@CrossOrigin,@ExceptionHandler,@ControllerAdvice,@RestControllerAdvice,
@Entity,@Table,@Id,@GenratedVAlue,@Column,@Transactional,@EnableSchecduling
Q2:Dependency Injection?
=======================Company Interview Quesation=============================

Q1: Your api work fine with 10 users but fails at 10000 users.What could break first?
Q2:Your servicereturn diffrent response for the same request.What could cause this?
Q3:How to handle api which return large data?
Q4:What is excutor services and explain its type?
Q5:Default capacity of ArrayList and Vector?
Q6:This vs super keyword?
Q:7 Concurrent hashmap and null key behaviour?
Q8:Private Constructor use cases?
Q9: Explain JWT Token Genration?
Q10: Threashold in hashmap?
Q11:Explain kafka partition key in kafka?
Q12: Pring the number in java starting form 5?
Q13:Diffrence b/w feign client and web client/rest template?
Q14: Isomorphic String?
Q15:How do you perform a filter+map+reduce in one stream pipeline?
Q16:What is diffrence b/w reduce() and collect() in java stream?
Q17: What is the diffrence b/w Collectors.groupingBy() and Collectors.partitionBy()?
Q18: How you convert a List<Employee> into a Map<Department,List<Employee>> using stream?
Q19: What is diffrence b/w run() and start() methods?
Q20: What is synchronization an why we need this?
Q21:What is falseSharing?
Q22:@Contended annotation?
Q23:How do you implement producer consumer problem?
Q24:What is differnce b/w synchronized and Reentrant Lock?
Q25:What is volatile keyword?
Q26: What is n+1 problem?
Q27: How do you implement inheritance in jpa?
Q28:How do you write native sql query in jpa?

=========================Mixed Quesation=================================
Q1:What is method hiding?
Q2: If you add null value to empthy set 
Q3:What is gc?
Q4 Can you override static method in an interface?
Q5: Internal working of hash map and what is Get() method?
Q6: What is soild principle?
Q7: new feature of java 8 ,17 and 21?
Q8: What are default methods?
Q9: Intermediate opertaion in streams
Q10: what is http status code 204?
Q11: What is logging and which logging tool are you used?
Q12: Explain authenticatiob layer?
Q13: How does JWT work, and what is its lifespan?
Q13: How does JWT work with Refresh Tokens?
Q14: how you integrate 3rd party data in your project?
Q15:@LazyAnnotation?why ?how
Q16:Component Sacnning?
Q17:Bean Scope?
================SQL=======================================
1: you have a user table with 50 records?write a query to retrive 20 records starting from 5th row the result should include the users first name and last name?
2:You have two tables.Write a query using inner join to reterive data .you can use any example data for this?


===================MIcroServices Interview Quesation=====================================
1:How would you design netflix like streaming architecture?
2:What is CDN?
3:Massive Traffice handling?
4:What happen when one service down ?
5:How do you secure microservice?
6:What tool have you used for monitoring?
7:How would you handle distributed transactions?
8:Why 2pc avoided in microservices?
9:Saga Pattern?
===============KAFKA================================
1:What is apche kafka?
2:Why do we need kafka?
3:key features of kafka?
4:What is consumer group?
4:Consumer group id?Partition Assignment?Scaling?
5:Can multiple consumer 	read the same topics?
6:Role of zookeaper?
7:Can two producer write the same partition?
8:can kafka work without zookeeper?
9:What is leader and followers?
10:How does kafka avoid duplicate messagess?.
11:How does kafka assign messages to partitions Does it use round-robin internally?
==============================
What is singleton pattern?






































