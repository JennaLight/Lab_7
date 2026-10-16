# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Jenna Light
Adrian Leven
## Summary
In this lab, we used the half_adder from the previous lab as inspiration for the half_subtracter. While similar to the half_adder, the carrying bit was used differently. Using the full_adder we implemented in the previous lab, we implemented a ones complement adder as well as a twos complement converter. The twos complement implementation made use of the generate command to define multiple full adders together.
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The key difference between the half adder we created previously and the half subtractor we implemented this week in lab is small, as the carry out bit functions differently. With an adder, the carry out bit is 1 only if A and B are both 1. However, the subtracter differs in that the carry out bit is 1 only if A is 0 and B is 1.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The issue with the implementation of the final carry of a One's Complement adder is that it must inform the least significant bit, which has the potential to create a race condition where the final output is changing due to its own influence over the initial input. In essence, the earliest bit addition depends on the final addition, which in turn depends on the outcome of the earlier bit additions. This would make it difficult to implement in a standard Turing-complete language, due to the potential for continuous value oscillation.
### 3 - What is the edge case and problem with Two’s Complement number representation?
Because the value for zero must take up space in the number system for Two's Complement, there are actually an odd number of values that can be represented even given the binary nature of bits. For this reason, Two's complement can represent numbers between (-)2^N and 2^N - 1, where N is the number of bits provided. Unlike typical binary counting systems we cannot actually represent the value for 2^N. This causes a small amount of asymmetry, though it ultimately does not impact the system's ability to add and subtract values from one another. 
