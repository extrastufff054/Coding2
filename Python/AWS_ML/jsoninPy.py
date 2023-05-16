#JSON is text written in JavaScript Object Notation. Python has a built-in package called json, that can be used to work with JSON data.

import json

#Sample JSON data
x= '{"first_name" : "Jane", "last_name" : "Doe", "age" : 25, "city" : "New York"}'

#Read JSON data
y=json.loads(x)

#Print the output, which is similar to a dictionary
print("Employee name is " +y["first_name"] + " " + y["last_name"])
