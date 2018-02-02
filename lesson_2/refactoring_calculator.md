#### Things to think about:

1. Is there a better way to validate that the user has input a number? We'll cover this in more detail in a future assignment.


   ```ruby
   # We could do something like this
   number.to_i.to_s == number
   ```

   ​

2. It looks like you can call `to_i` or `to_f` to convert strings to integers and floats, respectively. Look up the `String#to_i`and `String#to_f` documentation in Ruby docs and look at their various examples and use cases.

   [String#to_i](http://ruby-doc.org/core-2.4.1/String.html#method-i-to_i)

   [String#to_f](http://ruby-doc.org/core-2.4.1/String.html#method-i-to_f)




3. Our `operation_to_message` method is a little dangerous, because we're relying on the `case` statement being the last expression in the method. What if we needed to add some code after the `case` statement within the method? What changes would be needed to keep the method working with the rest of the program? We'll show a solution in an upcoming assignment.


```ruby
def operation_to_message(op)
  message = case op
  			when '1' then 'Adding'
            when '2' then 'Substracting'
            when '3' then 'Multiplying'
            when '4' then 'Dividing'
  			end
  # We can now add some code here without breaking the method
    
  message # return message explicitly
end
```



4. Most Rubyists don't invoke methods with parentheses, unless they're passing in a parameter. For example, we use `name.empty?()`, but most Rubyists would write `name.empty?`. Some Rubyists even go as far as not putting parentheses around method calls even when passing in parameters. For example, they would write `prompt "hi there"` as opposed to `prompt("hi there")`.

   Try removing some of the optional parentheses when calling methods to get your eyes acquainted with reading different styles of Ruby code. This will be especially useful if you are using a DSL written in Ruby, like Rspec or Rails.



5. We're using `Kernel.puts()` and `Kernel.gets()`. But the `Kernel.` is extraneous as well as the parentheses. Therefore, we can just call those methods by `gets` and `puts`. We already know that in Ruby we can omit the parentheses, but how come we can also omit the `Kernel.`?

   Answer:

   When we write Ruby code that's not in a class, we are working within an object called `main`, which is an instance of `Object`. The `Kernel` module is automatically loaded by `Object`, giving us access to all of its methods.

   ```
   irb 001> self
   => main
   irb 002> self.class
   => Object

   ```

   Note: if that explanation didn't make any sense, don't worry. Just remember **`Kernel` methods are available everywhere in Ruby.**

   ​

6. There are lots of messages sprinkled throughout the program. Could we move them into some configuration file and access by key? This would allow us to manage the messages much easier, and we could even internationalize the messages. This is just a thought experiment, and no need to code this up.

```
We could have a configuration file describing a hash table.
Load the hash table and access its values by key
Seems to be a good method to manage different languages.
```



Hopefully these bullet points help you consider how many little edge cases and features one simple program can have.