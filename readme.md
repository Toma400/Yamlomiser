<center><img src="build/rand.png"></center>

# Yamlomiser
Yamlomiser (YAML + Randomiser) is small software I've built inspired by conversation
about usage of AI to generate names. However, as much as it could lift such weight
from your shoulders, AI will not achieve coherency with your created world easily, and
generated names will most probably be extremely generic.

Hence, Yamlomiser puts this weight back on your shoulders. Don't thank me!

# What is it
Yamlomiser uses .yaml file to randomise values you manually put into it, supporting
also separation through categories.  
It is meant to be helper with anything that requires some randomness with controlled coherency - for example,
searching for name of your character, but from collection of names you want. Categories allow you
to make it a bit more customised, for example have names and surnames, or categories for gender, culture or
whatever else.

# How it works
Yamlomiser works with .yaml file, namely `values.yaml`. If you want small explanation
of YAML syntax, head [here](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html),
however it is so intuitive that it should be enough for you to just take a peek into
the file to see how it works. You can open it with any text reading software, like Notepad.  
File needs to have at least one category and one value.

If there's executable file, you simply enter category names into the terminal showing up.

If there's not, you can download the repository and run it with `ruby randomiser.rb`, or build the executable
through `ruby build.rb` command. Note that you should have Ruby installed (used 3.2.1 version),
as well as `yaml` gem, for this to work properly.  
Building executable additionally requires `ocra` and `zip` gems (and possibly `rubyzip` as well).

# License and credits
License: simple [**All Rights Reserved**](license.md). Because why the heck not.
Credits:
- Toma400 (code, logo, everything)
- GothRoss server (idea)

Also, \#NoAI & \#SupportHumanArtists, everyone!
