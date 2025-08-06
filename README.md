# LaTeX Letter Template (DIN 5008)

This is a simple LaTeX template for creating letters that conform to the German
DIN 5008 standard. It is based on the KOMA-Script `scrlttr2` class.

## Installation

To install the template, you need to have `make` and a TeX distribution (like
TeX Live) installed.

Run the following command in your terminal:

```bash
make install
```

This will copy the `letter-din-5008.sty` file to your local TeX tree, making it
available to all your LaTeX projects.

## Usage

Here is a minimal example of how to use the template:

```latex
\documentclass[
    parskip=full,
    paper=A4,
    fromalign=right,
    fromphone=true,
    fromemail=true,
    version=last,
]{scrlttr2}

\usepackage{letter-din-5008}

\begin{document}

\makeletter
  {Max Mustermann} % Sender Name
  {Musterstraße 1
    \\12345 Musterstadt} % Sender Address
  {01234/56789} % Sender Phone
  {max.mustermann@example.com} % Sender E-Mail
  {Empfängerfirma GmbH\\
    Frau Erika Musterfrau\\
    Zielstraße 99\\
    54321 Zielhausen} % Recipient
  {Your request from dd.mm.yyyy} % Subject
  {Dear Ms. Musterfrau,} % Opening
  {Here is the main content of the letter.} % Body

\end{document}
```
