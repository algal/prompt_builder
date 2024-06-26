# prompt_builder


<!-- WARNING: THIS FILE WAS AUTOGENERATED! DO NOT EDIT! -->

It’s just two functions, really. And a class if you want it!

## Install

``` sh
pip install prompt_builder
```

## How to use

The simplest way to use this is just to use the two functions,
[`fields_needed`](https://algal.github.io/prompt_builder/prompt_builder.html#fields_needed)
and
[`substitute_vals`](https://algal.github.io/prompt_builder/prompt_builder.html#substitute_vals).
This introduces no new types, since you just use a plain Python format
string as your raw template.

The function
[`fields_needed`](https://algal.github.io/prompt_builder/prompt_builder.html#fields_needed)
tells you which fields need to be filled to complete the template:

``` python
s = " Hello {name}, your friend is {friend}"
print(s)
```

     Hello {name}, your friend is {friend}

``` python
fields_needed(s)
```

    {'friend', 'name'}

The function
[`substitute_vals`](https://algal.github.io/prompt_builder/prompt_builder.html#substitute_vals)
lets you fill some or all of the fields, in any order, and returns a new
template:

``` python
s2 = substitute_vals(s, name="Bob")
print(s2)
```

     Hello Bob, your friend is {friend}

``` python
s3 = substitute_vals(s,friend="Jack")
print(s3)
```

     Hello {name}, your friend is Jack

Of course, by using kwargs syntax, you can use a dictionary or a
dataclass to provide field values as well:

``` python
val_set1 = {"name":"Alexis", "friend":"Claude"}
s4 = substitute_vals(s,**val_set1)
print(s4)
```

     Hello Alexis, your friend is Claude
