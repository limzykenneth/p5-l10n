-number-type = Number
-string-type = String
-p5-vector-type = p5.Vector
-array-type = Array
-boolean-type = Boolean
-optional-parameter = (Optional)
-empty-placeholder = [placeholder, do not translate]

description = A class to describe a two or three dimensional vector, specifically a Euclidean (also known as geometric) vector. A vector is an entity that has both magnitude and direction. The datatype, however, stores the components of the vector (x, y for 2D, and x, y, z for 3D). The magnitude and direction can be accessed via the methods <a href="#/p5.Vector/mag">mag()</a> and <a href="#/p5.Vector/heading">heading()</a>.
    In many of the p5.js examples, you will see <a href="#/p5.Vector">{-p5-vector-type}</a> used to describe a position, velocity, or acceleration. For example, if you consider a rectangle moving across the screen, at any given instant it has a position (a vector that points from the origin to its location), a velocity (the rate at which the object's position changes per time unit, expressed as a vector), and acceleration (the rate at which the object's velocity changes per time unit, expressed as a vector).
    Since vectors represent groupings of values, we cannot simply use traditional addition/multiplication/etc. Instead, we'll need to do some "vector" math, which is made easy by the methods inside the <a href="#/p5.Vector">{-p5-vector-type}</a> class.

parameters =
    .x = {-number-type}: {-optional-parameter} x component of the vector
    .y = {-number-type}: {-optional-parameter} y component of the vector
    .z = {-number-type}: {-optional-parameter} z component of the vector

fields =
    .x = The x component of the vector
    .y = The y component of the vector
    .z = The z component of the vector

toString =
    .description = Returns a string representation of a vector v by calling String(v) or v.toString(). This method is useful for logging vectors in the console.
    .returns = {-string-type}

set =
    .description = Sets the x, y, and z component of the vector using two or three separate variables, the data from a <a href="#/p5.Vector">{-p5-vector-type}</a>, or the values from a float array.
    .params =
        { $name ->
            [x] {-number-type}: {-optional-parameter} the x component of the vector
            [y] {-number-type}: {-optional-parameter} the y component of the vector
            [z] {-number-type}: {-optional-parameter} the z component of the vector
            [value] {-p5-vector-type}|{-number-type}[]: the vector to set
            *[other] {-empty-placeholder}
        }

copy =
    .description = Gets a copy of the vector, returns a <a href="#/p5.Vector">{-p5-vector-type}</a> object.
    .returns = {-p5-vector-type}: the copy of the <a href="#/p5.Vector">{-p5-vector-type}</a> object

add =
    .description = Adds x, y, and z components to a vector, adds one vector to another, or adds two independent vectors together. The version of the method that adds two vectors together is a static method and returns a <a href="#/p5.Vector">{-p5-vector-type}</a>, the others acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of the vector to be added
            [y] {-number-type}: {-optional-parameter} the y component of the vector to be added
            [z] {-number-type}: {-optional-parameter} the z component of the vector to be added
            [value] {-p5-vector-type}|{-number-type}[]: the vector to add
            [v1] {-p5-vector-type}: a <a href="#/p5.Vector">{-p5-vector-type}</a> to add
            [v2] {-p5-vector-type}: a <a href="#/p5.Vector">{-p5-vector-type}</a> to add
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            *[other] {-empty-placeholder}
        }

rem =
    .description = Gives remainder of a vector when it is divided by another vector. See examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of divisor vector
            [y] {-number-type}: the y component of divisor vector
            [z] {-number-type}: the z component of divisor vector
            [value] {-p5-vector-type}|{-number-type}[]: divisor vector
            [v1] {-p5-vector-type}: dividend <a href="#/p5.Vector">{-p5-vector-type}</a>
            [v2] {-p5-vector-type}: divisor <a href="#/p5.Vector">{-p5-vector-type}</a>
            *[other] {-empty-placeholder}
        }

sub =
    .description = Subtracts x, y, and z components from a vector, subtracts one vector from another, or subtracts two independent vectors. The version of the method that subtracts two vectors is a static method and returns a <a href="#/p5.Vector">{-p5-vector-type}</a>, the other acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [x] {-number-type}: the x component of the vector to be subtract
            [y] {-number-type}: {-optional-parameter} the y component of the vector to be subtract
            [z] {-number-type}: {-optional-parameter} the z component of the vector to be subtract
            [value] {-p5-vector-type}|{-number-type}[]: the vector to subtract
            [v1] {-p5-vector-type}: a <a href="#/p5.Vector">{-p5-vector-type}</a> to subtract from
            [v2] {-p5-vector-type}: a <a href="#/p5.Vector">{-p5-vector-type}</a> to subtract
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            *[other] {-empty-placeholder}
        }

mult =
    .description = Multiplies the vector by a scalar, multiplies the x, y, and z components from a vector, or multiplies the x, y, and z components of two independent vectors. When multiplying a vector by a scalar, the x, y, and z components of the vector are all multiplied by the scalar. When multiplying a vector by a vector, the x, y, z components of both vectors are multiplied by each other (for example, with two vectors a and b: a.x * b.x, a.y * b.y, a.z * b.z). The static version of this method creates a new <a href="#/p5.Vector">{-p5-vector-type}</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [n] {-number-type}: The number to multiply with the vector
            [x] {-number-type}: The number to multiply with the x component of the vector
            [y] {-number-type}: The number to multiply with the y component of the vector
            [z] {-number-type}: {-optional-parameter} The number to multiply with the z component of the vector
            [arr] {-number-type}[]: The array to multiply with the components of the vector
            [v] {-p5-vector-type}: The vector to multiply with the components of the original vector
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            [v0] {-p5-vector-type}
            [v1] {-p5-vector-type}
            *[other] {-empty-placeholder}
        }

div =
    .description = Divides the vector by a scalar, divides a vector by the x, y, and z arguments, or divides the x, y, and z components of two vectors against each other. When dividing a vector by a scalar, the x, y, and z components of the vector are all divided by the scalar. When dividing a vector by a vector, the x, y, z components of the source vector are treated as the dividend, and the x, y, z components of the argument is treated as the divisor (for example with two vectors a and b: a.x / b.x, a.y / b.y, a.z / b.z). The static version of this method creates a new <a href="#/p5.Vector">{-p5-vector-type}</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
    .params =
        { $name ->
            [n] {-number-type}: The number to divide the vector by
            [x] {-number-type}: The number to divide with the x component of the vector
            [y] {-number-type}: The number to divide with the y component of the vector
            [z] {-number-type}: {-optional-parameter} The number to divide with the z component of the vector
            [arr] {-number-type}[]: The array to divide the components of the vector by
            [v] {-p5-vector-type}: The vector to divide the components of the original vector by
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            [v0] {-p5-vector-type}
            [v1] {-p5-vector-type}
            *[other] {-empty-placeholder}
        }

mag =
    .description = Calculates the magnitude (length) of the vector and returns the result as a float (this is simply the equation sqrt(x*x + y*y + z*z).)
    .returns = {-number-type}: magnitude of the vector
    .params =
        { $name ->
            [vecT] {-p5-vector-type}: the vector to return the magnitude of
            *[other] {-empty-placeholder}
        }

magSq =
    .description = Calculates the squared magnitude of the vector and returns the result as a float (this is simply the equation <em>(x*x + y*y + z*z)</em>.) Faster if the real length is not required in the case of comparing vectors, etc.
    .returns = {-number-type}: squared magnitude of the vector

dot =
    .description = Calculates the dot product of two vectors. The version of the method that computes the dot product of two independent vectors is a static method. See the examples for more context.
    .returns = {-number-type}: the dot product
    .params =
        { $name ->
            [x] {-number-type}: x component of the vector
            [y] {-number-type}: {-optional-parameter} y component of the vector
            [z] {-number-type}: {-optional-parameter} z component of the vector
            [value] {-p5-vector-type}: value component of the vector or a <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            [v1] {-p5-vector-type}: the first <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            [v2] {-p5-vector-type}: the second <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            *[other] {-empty-placeholder}
        }

cross =
    .description = Calculates and returns a vector composed of the cross product between two vectors. Both the static and non static methods return a new <a href=\"#/p5.Vector\">{-p5-vector-type}</a>. See the examples for more context.
    .returns = {-p5-vector-type}: <a href=\"#/p5.Vector\">{-p5-vector-type}</a> composed of cross product
    .params =
        { $name ->
            [v] {-p5-vector-type}: <a href=\"#/p5.Vector\">{-p5-vector-type}</a> to be crossed
            [v1] {-p5-vector-type}: the first <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            [v2] {-p5-vector-type}: the second <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            *[other] {-empty-placeholder}
        }

dist =
    .description = Calculates the Euclidean distance between two points (considering a point as a vector object).
    .returns = {-number-type}: the distance
    .params =
        { $name ->
            [v] {-p5-vector-type}: the x, y, and z coordinates of a <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            [v1] {-p5-vector-type}: the first <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            [v2] {-p5-vector-type}: the second <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            *[other] {-empty-placeholder}
        }

normalize =
    .description = Normalize the vector to length 1 (make it a unit vector).
    .returns = {-p5-vector-type}: normalized <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
    .params =
        { $name ->
            [v] {-p5-vector-type}: the vector to normalize
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            *[other] {-empty-placeholder}
        }

limit =
    .description = Limit the magnitude of this vector to the value used for the <b>max</b> parameter.
    .params =
        { $name ->
            [max] {-p5-vector-type}: {-number-type}: the maximum magnitude for the vector
            *[other] {-empty-placeholder}
        }

setMag =
    .description = Set the magnitude of this vector to the value used for the <b>len</b> parameter.
    .params =
        { $name ->
            [len] {-number-type}: the new length for this vector
            *[other] {-empty-placeholder}
        }

heading =
    .description = Calculate the angle of rotation for this vector(only 2D vectors). p5.Vectors created using <a src=\"#/p5/createVector\">createVector()</a> will take the current <a = src=\"#/p5/angleMode\">angleMode</a> into consideration, and give the angle in radians or degree accordingly.
    .returns = {-number-type}: the angle of rotation

setHeading =
    .description = Rotate the vector to a specific angle (only 2D vectors), magnitude remains the same
    .params =
        { $name ->
            [angle] {-number-type}: the angle of rotation
            *[other] {-empty-placeholder}
        }

rotate =
    .description = Rotate the vector by an angle (only 2D vectors), magnitude remains the same
    .params =
        { $name ->
            [angle] {-number-type}: the angle of rotation
            [v] {-p5-vector-type}
            [target] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            *[other] {-empty-placeholder}
        }

angleBetween =
    .description = Calculates and returns the angle (in radians) between two vectors.
    .returns = {-number-type}: the angle between (in radians)
    .params =
        { $name ->
            [value] {-p5-vector-type}: the x, y, and z components of a <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
            *[other] {-empty-placeholder}
        }

lerp =
    .description = Linear interpolate the vector to another vector
    .params =
        { $name ->
            [x] {-number-type}: the x component
            [y] {-number-type}: the x component
            [z] {-number-type}: the x component
            [amt] {-number-type}: the amount of interpolation; some value between 0.0  (old vector) and 1.0 (new vector). 0.9 is very near  the new vector. 0.5 is halfway in between.
            [v] {-p5-vector-type}: the <a href=\"#/p5.Vector\">{-p5-vector-type}</a> to lerp to
            [v1] {-p5-vector-type}
            [v2] {-p5-vector-type}
            [v2] {-p5-vector-type}: {-optional-parameter} the vector to receive the result {-optional-parameter}
            *[other] {-empty-placeholder}
        }

reflect =
    .description = Reflect the incoming vector about a normal to a line in 2D, or about a normal to a plane in 3D This method acts on the vector directly
    .params =
        { $name ->
            [surfaceNormal] {-p5-vector-type}: the <a href=\"#/p5.Vector\">{-p5-vector-type}</a> to reflect about, will be normalized by this method
            *[other] {-empty-placeholder}
        }

array =
    .description = Return a representation of this vector as a float array. This is only for temporary use. If used in any other fashion, the contents should be copied by using the <b>p5.Vector.<a href=\"#/p5.Vector/copy\">copy()</a></b> method to copy into your own array.
    .returns = {-number-type}[]: an Array with the 3 values

equals =
    .description = Equality check against a <a href=\"#/p5.Vector\">{-p5-vector-type}</a>
    .returns = {-boolean-type}: whether the vectors are equals
    .params =
        { $name ->
            [x] {-number-type}: {-optional-parameter} the x component of the vector
            [y] {-number-type}: {-optional-parameter} the y component of the vector
            [z] {-number-type}: {-optional-parameter} the z component of the vector
            [value] {-p5-vector-type}|{-array-type}: the vector to compare
            *[other] {-empty-placeholder}
        }

fromAngle =
    .description = Make a new 2D vector from an angle
    .returns = {-p5-vector-type}: the new <a href=\"#/p5.Vector\">{-p5-vector-type}</a> object
    .params =
        { $name ->
            [angle] {-number-type}: the desired angle, in radians (unaffected by <a href=\"#/p5/angleMode\">angleMode</a>)
            [length] {-number-type}: {-optional-parameter} the length of the new vector (defaults to 1)
            *[other] {-empty-placeholder}
        }

fromAngles =
    .description = Make a new 3D vector from a pair of ISO spherical angles
    .returns = {-p5-vector-type}: the new <a href=\"#/p5.Vector\">{-p5-vector-type}</a> object
    .params =
        { $name ->
            [theta] {-number-type}: the polar angle, in radians (zero is up)
            [phi] {-number-type}: the azimuthal angle, in radians  (zero is out of the screen)
            [length] {-number-type}: {-optional-parameter} the length of the new vector (defaults to 1)
            *[other] {-empty-placeholder}
        }

random2D =
    .description = Make a new 2D unit vector from a random angle
    .returns = {-p5-vector-type}: the new <a href=\"#/p5.Vector\">{-p5-vector-type}</a> object

random2D =
    .description = Make a new random 3D unit vector.
    .returns = {-p5-vector-type}: the new <a href=\"#/p5.Vector\">{-p5-vector-type}</a> object
