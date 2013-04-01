I am an abstract superclass.  Subclass me to create your own service classes whose instances can be started and stopped.  Subclasses should override the #runWhile: method to do something useful.

An instance of an ApplicationService will have a Process associated with it while it is running.  
An ApplicationService can be in one of three states that are determined by the process and condiction instance variables:

	running: condition == #run & process notNil
	stopping: condition ~~ #run & process notNil 
	stopped: process isNil

Instance Variables:

name <String | nil> - An optional name for the given service

process <Process | nil> - The Process instance for a running service 

condition <#run | #stop> - Indicates whether the associated process should continue to run or whether it should stop running

dynamicBindings <DynamicBindings | nil> - A set of dynamic bindings that are active for the associated process; if used instead of global variables, then multiple services can run simultaneously and be bound to different sets of "globals"; see the class comments for DynamicBindings for more details

priority <Number> - The priority at which the associated process will run

