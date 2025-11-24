# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
## Summary
In this lab, we learned how One Hot and Binary encodings 
are used to build finite state machines, and how each method 
affects the logic and resources required. We saw that One Hot 
makes the next-state logic more straightforward because each 
state gets its own flip-flop, but it uses more hardware. Binary 
encoding, on the other hand, uses far fewer flip-flops, but the logic becomes more complex since we have to decode the binary values and 
handle invalid states. Overall, working through both versions helped 
us understand how digital systems actually store and transition between states.

### Compare and contrast One Hot and Binary encodings
One Hot encoding assigns one flip-flop per state, making the 
logic simple and easy to follow, but it uses more hardware as 
the number of states grows. Binary encoding compresses the state 
into a few bits, so it’s much more efficient with flip-flops, but 
requires more complicated combinational logic and introduces invalid 
state combinations. In short: One Hot is simple but hardware-heavy; Binary is compact but logic-heavy.
### Which method did your team find easier, and why?
We found the One Hot method easier because the next-state logic 
is much more intuitive. Each state has its own flip-flop, so it’s 
easy to visualize how the machine moves from one state to another 
without worrying about binary decoding or invalid states. Designing 
and checking the transitions felt more straightforward overall.
### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
On an FPGA with plenty of flip-flops available, One Hot encoding 
is often preferred because it simplifies design, speeds up timing, 
and reduces logic depth. However, if the state machine has many states 
or if we need to minimize flip-flop usage, Binary encoding becomes the better option. In resource-constrained designs or large state machines, Binary is more efficient even though it’s harder to design.
