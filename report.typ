#import "docs/template.typ": submission, panels, todo

#show: submission.with(
  lab: 4,
  title: "Title",
  group: none,
  authors: (
    (name: "Member Name", email: "gatorlink@ufl.edu"),
  ),
  date: datetime.today(),
)

= First section

#todo[]

= AI disclosure

- *#todo[Member Name]*: #todo[AI tools this member used and for what.]
