# Computational Photography labs

Each lab is a branch, `Lab0`, `Lab1`, and so on, and its `README.md` is the
lab. This branch holds the setup and the files shared by every lab. Your
work lives in a private repository of your group, never in a fork. A Word
template and MATLAB starters are on Canvas for groups not using this
repository; the deliverable is the same either way.

## Agentic setup

Clone this repository, open your AI agent in it, and paste one prompt. The
agent reads `AGENTS.md` on its own.

First in your group, or working solo:

> Set me up for this course: make a private repository of mine the origin,
> keep the course repository as upstream, install the environment, and
> onboard me.

Joining a repository a teammate already created:

> Set me up for this course: my group's repository is `<url>`. Install the
> environment and onboard me.

Afterwards, whenever you need them:

> Start Lab 1.

> I want to collaborate with my group.

> Build the PDF.

## Manual setup

Requirements: git, Python 3.10 or newer, typst 0.12 or newer. Install typst
with `brew install typst`, `winget install Typst.Typst`, or
`cargo install typst-cli`.

First in your group, or working solo:

```sh
git clone https://github.com/uf-focus-lab/Computational-Photography.git
cd Computational-Photography
git remote rename origin upstream
gh repo create comp-photo-labs --private --source=. --remote=origin --push
# Without gh: create an empty private repository on github.com, then
#   git remote add origin git@github.com:<you>/comp-photo-labs.git
#   git push -u origin welcome
```

Add teammates under the repository's Settings, Collaborators.

Joining a repository a teammate already created:

```sh
git clone git@github.com:<teammate>/comp-photo-labs.git
cd comp-photo-labs
git remote add upstream https://github.com/uf-focus-lab/Computational-Photography.git
```

Then, in either case:

```sh
python3 -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

Create `GROUP.md` at the root. Git ignores it.

```markdown
# Group 7

Me: Ada Lovelace
Repository: git@github.com:ada/comp-photo-labs.git

| Name | UF email |
| --- | --- |
| Ada Lovelace | ada@ufl.edu |
| Alan Turing | turing@ufl.edu |
```

Each lab: `git fetch upstream`, `git switch -c Lab1 upstream/Lab1`,
`git push -u origin Lab1`, do the work described in `README.md`, build
`GroupXX.pdf` following `docs/SUBMISSION.md`, and upload it to Canvas.
Pull before you start each day and push when you stop.
