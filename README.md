# Lab 0: Art Lab

<!-- AI agents: AGENTS.md at the root is your instruction file. -->

Art Lab is our simplest lab. All we do is read in an image and try to create
effects by making the image different. Then we see how far generative AI can
take the same idea.

This repository is the recommended way to do the labs: clone it, work with
your AI agent, and let it build the report. If you would rather work the
conventional way, the same report as a Word template and the original MATLAB
script are on Canvas. The deliverable is identical either way.

|                  |                                        |
| ---------------- | -------------------------------------- |
| Status           | Practice lab, not graded this semester |
| Getting started  | the `welcome` branch, read once        |
| Report format    | `docs/REPORT.md`                       |
| Building the PDF | `docs/SUBMISSION.md`                   |

## Tasks

### 1. Quantize the image by code

Open `artlab.py`, or `artlab.m` from Canvas if you work in MATLAB, and
follow the in-class instructions. It reads `mountains.png` and has three
gaps to fill.

- Q1 prints the size of the image.
- Q2 splits the image into its red, green and blue channels.
- Q3 quantizes each channel. Green is done as an example. Do red and blue,
  then change the levels until you get an effect you like.

Run `python artlab.py` to generate `quantized.png`.

### 2. Create another such image with ControlNet

Start from `mountains.png` at https://stablediffusionweb.com/ControlNet and
keep the result you like best as `controlnet.png`.

### 3. Do better than ControlNet with your favorite AI

The instructor uses Gemini, but use whatever you like. Keep the result as
`favorite.png` and keep the prompt you used.

## Deliverables

Submit one PDF, named `GroupXX.pdf` with your two-digit group number, for
example `Group01.pdf`, generated from `report.typ` or from the Word template
on Canvas. Every red underlined placeholder must be filled in. Both
templates have the same sections and are graded the same way.
