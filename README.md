# Computational Photography labs

You are on the `welcome` branch, which holds the setup instructions and the
files shared by every lab. Each lab is its own branch, `Lab0`, `Lab1`,
`Lab2`, and so on, and the `README.md` on that branch is the lab.

Using this repository is recommended, not required. Each lab's Canvas page
carries the same report as a Word template and, where the lab has starter
code, a MATLAB version. Groups that choose that path skip the rest of this page
and upload the same `GroupXX.pdf` with the same sections. Mixing is fine:
one member can work in MATLAB and paste results into the group's
`report.typ`.

## Do not fork this repository

A fork of a public repository is public, and your lab work must not be.
Your work lives in a private repository, one per group, and this repository
stays a read-only `upstream`.

## Setup, once

You need git, Python 3.10 or newer, and typst 0.12 or newer. Install typst
with `brew install typst` on macOS, `winget install Typst.Typst` on Windows,
or `cargo install typst-cli` anywhere. The `gh` CLI is optional.

**A. First in your group, or solo.** Create the private repository.

```sh
git clone https://github.com/uf-focus-lab/Computational-Photography.git
cd Computational-Photography
git remote rename origin upstream

gh repo create comp-photo-labs --private --source=. --remote=origin --push
# Without gh: create an empty private repository on github.com, then
#   git remote add origin git@github.com:<you>/comp-photo-labs.git
#   git push -u origin Lab0
```

Then add each teammate under the repository's Settings, Collaborators, and
send them the clone URL.

**B. Joining a repository a teammate created.**

```sh
git clone git@github.com:<teammate>/comp-photo-labs.git
cd comp-photo-labs
git remote add upstream https://github.com/uf-focus-lab/Computational-Photography.git
```

**Both, then:**

```sh
python3 --version                # 3.10 or newer
python3 -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
typst --version                  # 0.12 or newer
```

Started solo and want to join a group later? Tell your agent. It merges your
work into the group repository without losing anything.

## First session with your agent

Open your AI agent in the repository. It reads `AGENTS.md` on its own, sees
there is no `GROUP.md`, and onboards you. If your group's roster is already
in `report.typ` it asks only which member you are; otherwise it asks for the
group number, or "no group yet", every member's name and UF email, and which
one is you. It also asks whether the group has a shared repository. It then
writes `GROUP.md` at the root. Git ignores that file, so it survives every
branch switch and never leaves your machine. Later sessions read it
silently.

Working without an agent? Write `GROUP.md` yourself:

```markdown
# Group 7

Me: Ada Lovelace
Repository: git@github.com:ada/comp-photo-labs.git

| Name | UF email |
| --- | --- |
| Ada Lovelace | ada@ufl.edu |
| Alan Turing | turing@ufl.edu |
```

Use `# Group none` with a one-row table if you have no group yet, and
`Repository: none yet` if there is no shared repository.

## Working as a group

One member's private repository is the group's central repository.
Everyone's `origin` points at it, `upstream` stays the course repository,
and the group uploads one PDF. Say "I want to collaborate with my group" to
your agent at any time and it handles whichever case applies.

Before you start each day, `git pull --ff-only` on the lab branch. Commit
and push often; the repository is private. If two of you edit the same
lines of `report.typ` you get a merge conflict; your agent resolves it with
you and never force pushes.

AI use is recorded in the last section of `report.typ`, AI disclosure,
one bullet per member. Your agent keeps your own bullet current after every
piece of work. See `docs/REPORT.md`.

## Each lab

1. **Fetch it.** A new lab appears as branch `LabN` on the course
   repository. Say "start lab N" to your agent, or by hand:

   ```sh
   git fetch upstream origin
   git switch -c Lab1 origin/Lab1      # a teammate already pushed it
   git switch -c Lab1 upstream/Lab1    # otherwise, then: git push -u origin Lab1
   ```

   Your previous lab stays on its own branch, untouched.

2. **Do it.** Tasks and deliverables are in `README.md` on that branch.
   `report.typ` shows exactly what the report must contain. Commit as you
   go, including the result images the report shows.

3. **Build the PDF.** Point your agent at `docs/SUBMISSION.md`. It fills in
   `report.typ`, has your group confirm the AI disclosure, and compiles
   `GroupXX.pdf`. Read the PDF before one of you uploads it to Canvas. You
   are responsible for every claim in it.

Without an agent, `docs/SUBMISSION.md` is a checklist you can follow by
hand.

## Layout

| File | Purpose |
| --- | --- |
| `README.md` | On `welcome`, this file. On a lab branch, the lab: tasks and deliverables |
| `report.typ` | The report: required headings, red placeholders, group roster, AI disclosure bullets |
| `GROUP.md` | Which member you are and where the group repository is. Never committed |
| `AGENTS.md` | Instructions for AI agents. `CLAUDE.md` and `GEMINI.md` are links to it |
| `docs/REPORT.md` | How `report.typ` and the template work |
| `docs/SUBMISSION.md` | The procedure that turns your work into the PDF |
| `docs/template.typ` | Shared typst template |
| `requirements.txt` | Python packages, shared by all labs |
| `LICENSE` | MIT |
| `.vscode/` | VS Code settings and recommended extensions: Python, Pylance, Tinymist for typst |

## AI use

This course is designed around agentic AI. Using AI to write code, run
experiments, make figures and draft the report is allowed unless a lab says
otherwise. A section marked `// manual` in `report.typ` must be written by
you in your own words. Every number in the PDF must come from code in your
repository. Every report ends with an AI disclosure section, one bullet
per member, that your group confirms before submission. You are
responsible for every claim in the PDF regardless of who or what wrote it.

Your repository stays private for the whole semester and after, unless the
syllabus says otherwise.
