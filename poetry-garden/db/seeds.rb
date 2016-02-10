kb_as_user = User.create({username: "KB", password: "12345", name: "KB DiAngelo"})
User.create({username: "jenna", password: "12345", name: "Jenna Espezua"})
User.create({username: "dandersen2", password: "12345", name: "Dan Andersen"})

kb = Author.create({user_id: 1, name: "KB DiAngelo", year_of_birth: 1989, bio: "Not really a poet"})
shakespeare = Author.create({name: "William Shakespeare", year_of_birth: 1564, bio: "Prolly the best poet of all time"})

Poem.create({author: shakespeare, submitter: kb_as_user,
  lines: "Since brass, nor stone, nor earth, nor boundless sea
          But sad mortality o’er-sways their power,
          How with this rage shall beauty hold a plea,
          Whose action is no stronger than a flower?
          O, how shall summer’s honey breath hold out
          Against the wreckful siege of battering days,
          When rocks impregnable are not so stout,
          Nor gates of steel so strong, but Time decays?
          O fearful meditation! where, alack,
          Shall Time’s best jewel from Time’s chest lie hid?
          Or what strong hand can hold his swift foot back?
          Or who his spoil of beauty can forbid?
          O, none, unless this miracle have might,
          That in black ink my love may still shine bright."})
