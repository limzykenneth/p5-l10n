-number-type = Number
-string-type = String

description = A class to describe a two or three dimensional vector, specifically a Euclidean (also known as geometric) vector. A vector is an entity that has both magnitude and direction. The datatype, however, stores the components of the vector (x, y for 2D, and x, y, z for 3D). The magnitude and direction can be accessed via the methods <a href="#/p5.Vector/mag">mag()</a> and <a href="#/p5.Vector/heading">heading()</a>.
    In many of the p5.js examples, you will see <a href="#/p5.Vector">p5.Vector</a> used to describe a position, velocity, or acceleration. For example, if you consider a rectangle moving across the screen, at any given instant it has a position (a vector that points from the origin to its location), a velocity (the rate at which the object's position changes per time unit, expressed as a vector), and acceleration (the rate at which the object's velocity changes per time unit, expressed as a vector).
    Since vectors represent groupings of values, we cannot simply use traditional addition/multiplication/etc. Instead, we'll need to do some "vector" math, which is made easy by the methods inside the <a href="#/p5.Vector">p5.Vector</a> class.

parameters =
    .x = {-number-type}: (Optional) x component of the vector
    .y = {-number-type}: (Optional) y component of the vector
    .z = {-number-type}: (Optional) z component of the vector

fields =
    .x = The x component of the vector
    .y = The y component of the vector
    .z = The z component of the vector

toString =
    .description = Returns a string representation of a vector v by calling String(v) or v.toString(). This method is useful for logging vectors in the console.
    .returns = {-string-type}

set =
    .description = Sets the x, y, and z component of the vector using two or three separate variables, the data from a <a href="#/p5.Vector">p5.Vector</a>, or the values from a float array.
    .params =
        { $name ->
            [x] {-number-type}: (Optional) the x component of the vector
            [y] {-number-type}: (Optional) the y component of the vector
            [z] {-number-type}: (Optional) the z component of the vector
            [value] p5.Vector|{-number-type}[]: the vector to set
            *[other] default
        }

copy =
    .description = Gets a copy of the vector, returns a <a href="#/p5.Vector">p5.Vector</a> object.
    .returns = p5.Vector: the copy of the <a href="#/p5.Vector">p5.Vector</a> object

add =
    .description = Adds x, y, and z components to a vector, adds one vector to another, or adds two independent vectors together. The version of the method that adds two vectors together is a static method and returns a <a href="#/p5.Vector">p5.Vector</a>, the others acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of the vector to be added
            [y] {-number-type}: (Optional) the y component of the vector to be added
            [z] {-number-type}: (Optional) the z component of the vector to be added
            [value] p5.Vector|{-number-type}[]: the vector to add
            [v1] p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to add
            [v2] p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to add
            [target] p5.Vector: (Optional) the vector to receive the result (Optional)
            *[other] default
        }

rem =
    .description = Gives remainder of a vector when it is divided by another vector. See examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of divisor vector
            [y] {-number-type}: the y component of divisor vector
            [z] {-number-type}: the z component of divisor vector
            [value] p5.Vector|{-number-type}[]: divisor vector
            [v1] p5.Vector: dividend <a href="#/p5.Vector">p5.Vector</a>
            [v2] p5.Vector: divisor <a href="#/p5.Vector">p5.Vector</a>
            *[other] default
        }

sub =
    .description = Subtracts x, y, and z components from a vector, subtracts one vector from another, or subtracts two independent vectors. The version of the method that subtracts two vectors is a static method and returns a <a href="#/p5.Vector">p5.Vector</a>, the other acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of the vector to be subtract
            [y] {-number-type}: (Optional) the y component of the vector to be subtract
            [z] {-number-type}: (Optional) the z component of the vector to be subtract
            [value] p5.Vector|{-number-type}[]: the vector to subtract
            [v1] p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to subtract from
            [v2] p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to subtract
            [target] p5.Vector: (Optional) the vector to receive the result (Optional)
            *[other] default
        }

mult =
    .description = Multiplies the vector by a scalar, multiplies the x, y, and z components from a vector, or multiplies the x, y, and z components of two independent vectors. When multiplying a vector by a scalar, the x, y, and z components of the vector are all multiplied by the scalar. When multiplying a vector by a vector, the x, y, z components of both vectors are multiplied by each other (for example, with two vectors a and b: a.x * b.x, a.y * b.y, a.z * b.z). The static version of this method creates a new <a href="#/p5.Vector">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [n] {-number-type}: The number to multiply with the vector
            [x] {-number-type}: The number to multiply with the x component of the vector
            [y] {-number-type}: The number to multiply with the y component of the vector
            [z] {-number-type}: (Optional) The number to multiply with the z component of the vector
            [arr] {-number-type}[]: The array to multiply with the components of the vector
            [v] p5.Vector: The vector to multiply with the components of the original vector
            [target] p5.Vector: (Optional) the vector to receive the result (Optional)
            [v0] p5.Vector
            [v1] p5.Vector
            *[other] default
        }

div =
    .description = Divides the vector by a scalar, divides a vector by the x, y, and z arguments, or divides the x, y, and z components of two vectors against each other. When dividing a vector by a scalar, the x, y, and z components of the vector are all divided by the scalar. When dividing a vector by a vector, the x, y, z components of the source vector are treated as the dividend, and the x, y, z components of the argument is treated as the divisor (for example with two vectors a and b: a.x / b.x, a.y / b.y, a.z / b.z). The static version of this method creates a new <a href="#/p5.Vector">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [n] {-number-type}: The number to divide the vector by
            [x] {-number-type}: The number to divide with the x component of the vector
            [y] {-number-type}: The number to divide with the y component of the vector
            [z] {-number-type}: (Optional) The number to divide with the z component of the vector
            [arr] {-number-type}[]: The array to divide the components of the vector by
            [v] p5.Vector: The vector to divide the components of the original vector by
            [target] p5.Vector: (Optional) the vector to receive the result (Optional)
            [v0] p5.Vector
            [v1] p5.Vector
            *[other] default
        }


