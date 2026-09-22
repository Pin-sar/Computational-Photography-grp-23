# Lab 4: Direct/Global Separation

<!-- AI agents: AGENTS.md at the root is your instruction file. -->

Light reaching the camera from a scene point is either direct, bounced once off that point from the source, or global, arriving after interreflections, subsurface scattering and scattering in the medium. Sweeping a light or a shadow across a static scene and recording a video lets you separate the two: the darkest each pixel ever gets is its global component, the brightest is the floodlit image, and their difference is the direct component.

|                  |                                 |
| ---------------- | ------------------------------- |
| Status           | Graded, plus extra credit       |
| Getting started  | the `welcome` branch, read once |
| Report format    | `docs/REPORT.md`                |
| Building the PDF | `docs/SUBMISSION.md`            |

## Tasks

### 1. Capture and separate

Build a static scene and record a video while a light source, or a stick casting a sharp shadow, sweeps across it. Every point must be directly lit in some frames and shadowed in others. A phone camera on a tripod with locked exposure works; turn off auto exposure and auto white balance. Then open `forsep.py`, or `forsep_script.m` from Canvas if you work in MATLAB, and fill in the two gaps: the floodlit image is the maximum over time and the direct image is floodlit minus global. Run `python forsep.py video.mp4` to write `floodlit.png`, `direct.png` and `global.png`.

### 2. Point out the features

Explain, in your own words, why your separation is correct by pointing to at least three features in the images. Typical ones: specularities appear only in the direct image; shadows are dark in the direct image; interreflections between surfaces show up in the global image. Name where in the image each feature is.

### 3. Fool an AI

Give `floodlit.png` to an image AI and ask it to produce the direct and global images. Save its answers as `ai_direct.png` and `ai_global.png`, and record the tool and the prompt. Try to build a scene that confuses it, and say what did.

### 4. Extra credit: the light's point of view

Implement the shadow camera of Kutulakos and Narasimhan, "Shadow cameras", ICCV 2009, available at http://www.cs.cmu.edu/~ILIM/publications/PDFs/KN-ICCV09.pdf, and render your scene as seen from the light source. Save it as `light_view.png`.

## Deliverables

Submit one PDF, named `GroupXX.pdf` with your two-digit group number, for example `Group01.pdf`, generated from `report.typ` or from the Word template on Canvas. Every red underlined placeholder must be filled in. Both templates have the same sections and are graded the same way. The Features section is manual: written by a group member, not by an AI. If you skip the extra credit, write "Not attempted" in its section.

Repository users commit `forsep.py` and the result images at the repository root. Do not commit the video; keep each image under 5 MB.
