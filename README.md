# Lab 4: Direct/Global Separation

<!-- AI agents: AGENTS.md at the root is your instruction file. -->

|                  |                                 |
| ---------------- | ------------------------------- |
| Status           | Graded, plus extra credit       |
| Getting started  | the `welcome` branch, read once |
| Report format    | `docs/REPORT.md`                |
| Building the PDF | `docs/SUBMISSION.md`            |

## Tasks

### 1. Create a static scene, and generate the Floodlit, Direct and Global images of that scene

Put them in the report and point out features that are in the direct image vs. the global, to explain that your result is correct. Example features:

1. Specularities in direct image
2. Shadows in direct image are dark
3. Interreflections in global image

Use this script to start, if you like: `forsep.py`, or `forsep_script.m` from Canvas if you work in MATLAB. For some versions of MATLAB, if you just drag and drop the video into MATLAB, it reads in the video directly. You can use this to save time.

### 2. Give your floodlit to an AI and ask it to generate direct and global

Try to create a scene that confuses the AI.

### 3. Extra credit: implement the shadow cameras paper

Generate a view of the scene from the point of view of the light source: http://www.cs.cmu.edu/~ILIM/publications/PDFs/KN-ICCV09.pdf

## Deliverables

Submit one PDF, named `GroupXX.pdf` with your two-digit group number, for example `Group01.pdf`, generated from `report.typ` or from the Word template on Canvas. Every red underlined placeholder must be filled in. Both templates have the same sections and are graded the same way. The Features section is manual: written by a group member, not by an AI. If you skip the extra credit, write "Not attempted" in its section.

Repository users commit `forsep.py` and the result images at the repository root. Do not commit the video; keep each image under 5 MB.
