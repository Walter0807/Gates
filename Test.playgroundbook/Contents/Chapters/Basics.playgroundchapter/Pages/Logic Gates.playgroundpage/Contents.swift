/*:

 **Boolean operations** can be used to describe connections between multiple [Boolean variables](glossary://Boolean%20variables). The basic operations of Boolean algebra are `AND`, `OR`, `NOT`.
 
 A **logic gate** is a physical device which implements a Boolean operation; that is, it performs a logical operation on 1 or 2 binary inputs and produces a single binary output.
 
 The basic logic gates are:
 
 - AND gate: A `true` output results **only** if all the inputs to the gate are `true`.
 - OR gate: A `true` output results if one or both the inputs to the gate are `true`.
 - NOT gate: If the applied input is `false` then the output becomes `true` and vice versa.
 
 The bahavior of these gates are represented by the [truth table](glossary://truth%20table) on the right.

 
 * Experiment:
   Let's start by setting the input values of the logic gates:
     1. Set the value of 📄 and 🖋 so that the output of the AND gate, 📝, is `true`.
     2. Set the value of 🍦 and 🍨 to ensure the OR gate output, 😍, is `true`.
     3. Set the value of 👍 to make 👎 `false`.
 
 
 
 
 */
//#-hidden-code
import PlaygroundSupport
allowGates = [true,true,true,false,false,false,false]
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, true, false)
let 📄 = Var(/*#-editable-code*/true/*#-end-editable-code*/), 🖋 = Var(/*#-editable-code*/true/*#-end-editable-code*/)
let 📝 = AND(📄,🖋)

let 🍦 = Var(/*#-editable-code*/true/*#-end-editable-code*/), 🍨 = Var(/*#-editable-code*/true/*#-end-editable-code*/)
let 😍 = OR(🍦,🍨)

let 👍 = Var(/*#-editable-code*/true/*#-end-editable-code*/)
let 👎 = NOT(👍)

/*:
Tap *"Run My Code"* to check the results.
When you are ready, move on to the [next page](@next)
 */

//#-hidden-code
if 📝 == Var(true) && 😍 == Var(true) && 👎 == Var(false){
    PlaygroundPage.current.assessmentStatus = .pass(message: "Now let's [proceed](@next).")
}
else{
    PlaygroundPage.current.assessmentStatus = .fail(hints: ["Try using the [truth table](glossary://truth%20table) above."], solution: "Set every variable to `true` may be a good choice.")

}
//#-end-hidden-code

