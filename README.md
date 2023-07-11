# modifiers2
In the above contract, we define an admin variable to store the address of the admin. The constructor is used to set the admin variable to the address of the deployer of the contract (i.e., msg.sender).

The onlyAdmin modifier is defined to check whether the caller of a function is the admin. It uses the require statement to enforce this condition. If the condition is not met, the modifier throws an exception and the function call fails.

The adminFunction is an example of a function that can only be called by the admin. It uses the onlyAdmin modifier to enforce the access restriction.

The publicFunction is an example of a function that can be called by anyone, as it does not have the onlyAdmin modifier.

By using this access modifier, only the admin will be able to call functions that have the onlyAdmin modifier, while other functions can be accessed by anyone.
