
<!-- README.md is generated from README.Rmd. Please edit that file -->

**GitHub repository**
<https://github.com/rforbiodatascience22/group_2_package>

**Package description**

The purpose of this package is to simulate the **Central Dogma of
Molecular Biology**. That is, the flow of information from DNA -\> RNA
-\> Protein

**Package usage (with examples)**

**Codon Table**

A codon table is necessary for the `translation` function The codon
table in this package is sourced from NCBI, stored in the object
`codon_table`.

### Function 1: `sample_with_replacement`

`sample_with_replacement` creates a DNA sequence, based on random
sampling with replacement. The DNA sequence length is specified with the
argument `nucleotide_size`. **Example**:

    dna <- sample_with_replacement(nucleotide_size = 50)

Generates an object `dna` with a `nucleotide_size` 50

***

### Function 2: `TU_sub`

`TU_sub` simulates the transcription process. The function replaces the
base T (thymine) with U (uracil). This replacement mimics transcription,
and effectively creates an translatable RNA strand. **Example**:

    rna <- TU_sub(dna = dna)

Generates an object `rna` based on the output from
`sample_with_replacement`.

***

### Function 3: `codon_start`

`codon_start` splits the `rna` object generated with `TU_sub` into
codons. **Example**:

    codons <- codon_start(rna = rna)

Generates `codons` based on output from `TU_sub`.

***

### Function 4: `translation`

`translation` well… translates. This function takes an object that has
been neatly divided into codons, and uses `codon_table` to generate a
polypeptide chain based on the output from `codon_start`. **Example**:

    protein <- translation(codons = codons)

Generates `protein` based on output from `TU_sub`.

***

### Function 5: `aa_plot`

`aa_plot` uses `ggplot2` to plot the counts of each amino acid residue
in the generated polypeptide chain. **Example**:

    aa_plot(peptide = protein)

Generated plot is based on the output from `translation`.

***

**Simulating mutations**

The package assumes flawless transcription and translation from start to
finish. However, in order simulate point mutations, an intermediary step
could be added between `sample_with_replacement` and `TU_sub`, to
replace bases with a “-”. Similarly, either preceding or following
`TU_sub`, a step that truncated or added 1 or 2 bases could be added, to
simulate a reading frame shift.
