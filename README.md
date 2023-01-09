# OOP_OBJ_C_dame
Trying out OOP in Objective-C


/// HW: Write down a few lines about Objective-C properties attributes like what are these and when to use.
///
/// Objective-C property attributes are as followed: Strong, Weak, Atomic, Nonatomic, ReadOnly, Read-Write, Retain, Assign.
/// Strong is the modern version of Retain, and Weak is the modern version of Assign. Strong defines ownership of an Object, while Weak is simply a pointer and will only work if something has a strong property.
/// Atomic takes its time to finish as a thread safe attribute, but it can be cancelled out by Nonatomic, which will always return results, just not true results. Assign is usually used with primitive data types, like Int.
/// And ReadWrite is a default behavioral attribute, while ReadOnly is used when we don't want a different class to set the value of a property
