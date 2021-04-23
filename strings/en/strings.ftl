description = A class to describe a two or three dimensional vector, specifically a Euclidean (also known as geometric) vector. A vector is an entity that has both magnitude and direction. The datatype, however, stores the components of the vector (x, y for 2D, and x, y, z for 3D). The magnitude and direction can be accessed via the methods <a href="#/p5.Vector/mag">mag()</a> and <a href="#/p5.Vector/heading">heading()</a>.
    In many of the p5.js examples, you will see <a href="#/p5.Vector">p5.Vector</a> used to describe a position, velocity, or acceleration. For example, if you consider a rectangle moving across the screen, at any given instant it has a position (a vector that points from the origin to its location), a velocity (the rate at which the object's position changes per time unit, expressed as a vector), and acceleration (the rate at which the object's velocity changes per time unit, expressed as a vector).
    Since vectors represent groupings of values, we cannot simply use traditional addition/multiplication/etc. Instead, we'll need to do some "vector" math, which is made easy by the methods inside the <a href="#/p5.Vector">p5.Vector</a> class.

parameters =
    .x = Number: (Optional) x component of the vector
    .y = Number: (Optional) y component of the vector
    .z = Number: (Optional) z component of the vector

fields =
    .x = The x component of the vector
    .y = The y component of the vector
    .z = The z component of the vector

methods =
    .toString = Returns a string representation of a vector v by calling String(v) or v.toString(). This method is useful for logging vectors in the console.
    .set = Sets the x, y, and z component of the vector using two or three separate variables, the data from a <a href=\"#/p5.Vector\">p5.Vector</a>, or the values from a float array.
    .copy = Gets a copy of the vector, returns a <a href="#/p5.Vector">p5.Vector</a> object.
    .add = Adds x, y, and z components to a vector, adds one vector to another, or adds two independent vectors together. The version of the method that adds two vectors together is a static method and returns a <a href=\"#/p5.Vector\">p5.Vector</a>, the others acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .rem = Gives remainder of a vector when it is divided by another vector. See examples for more context.
    .sub = Subtracts x, y, and z components from a vector, subtracts one vector from another, or subtracts two independent vectors. The version of the method that subtracts two vectors is a static method and returns a <a href=\"#/p5.Vector\">p5.Vector</a>, the other acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .mult = Multiplies the vector by a scalar, multiplies the x, y, and z components from a vector, or multiplies the x, y, and z components of two independent vectors. When multiplying a vector by a scalar, the x, y, and z components of the vector are all multiplied by the scalar. When multiplying a vector by a vector, the x, y, z components of both vectors are multiplied by each other (for example, with two vectors a and b: a.x * b.x, a.y * b.y, a.z * b.z). The static version of this method creates a new <a href=\"#/p5.Vector\">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .div = Divides the vector by a scalar, divides a vector by the x, y, and z arguments, or divides the x, y, and z components of two vectors against each other. When dividing a vector by a scalar, the x, y, and z components of the vector are all divided by the scalar. When dividing a vector by a vector, the x, y, z components of the source vector are treated as the dividend, and the x, y, z components of the argument is treated as the divisor (for example with two vectors a and b: a.x / b.x, a.y / b.y, a.z / b.z). The static version of this method creates a new <a href=\"#/p5.Vector\">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.



