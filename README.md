# Evaluation Scripts for Selective and Full Image Encryption (MATLAB)

MATLAB scripts used in my master's thesis and journal article to evaluate the encrypted images produced by [ThesisSelectiveEncryption](https://github.com/IJacaman/ThesisSelectiveEncryption) and [ThesisFullEncryption](https://github.com/IJacaman/ThesisFullEncryption).

**Paper:** https://doi.org/10.54963/jic.v4i2.1616

## Metrics

| Metric | What it measures |
|---|---|
| PSNR, MSE | Difference between the plain and encrypted image (lower PSNR means less visual similarity) |
| MSSIM | Structural similarity between the plain and encrypted image |
| Information entropy | Randomness of encrypted pixel values (ideal value 8 for 8-bit channels) |
| Pixel correlation | Correlation between adjacent pixels (horizontal, vertical, diagonal) |
| NPCR, UACI | Sensitivity of the ciphertext to a one-pixel change in the plain image |
| Histograms | Distribution of pixel values before and after encryption |
| Key sensitivity | Whether a tiny change in the key prevents recovery of the image |

## Requirements

- MATLAB (Image Processing Toolbox recommended)

## Usage

[FILL IN: list each script and what it computes, e.g. `psnr_mse.m`: PSNR and MSE per channel.]

Place the plain, encrypted and decrypted images produced by the C++ programs in [FILL IN: folder], then run [FILL IN: main script].

## Status

This repository contains the thesis code as recovered from the last working backup after the original development machine was lost. It has not yet been rebuilt on a clean machine. If you run into a build problem, please open an issue.

## Citation

If you use this code, please cite:

> Jacaman, I., & Farajallah, M. (2025). Selective Color Image Encryption Based on MSB and Sensitive Bits. *Journal of Intelligent Communication*, 4(2), 115–140. https://doi.org/10.54963/jic.v4i2.1616

```bibtex
@article{jacaman2025selective,
  author  = {Jacaman, Issa and Farajallah, Mousa},
  title   = {Selective Color Image Encryption Based on {MSB} and Sensitive Bits},
  journal = {Journal of Intelligent Communication},
  volume  = {4},
  number  = {2},
  pages   = {115--140},
  year    = {2025},
  doi     = {10.54963/jic.v4i2.1616}
}
```

Master's thesis (Palestine Polytechnic University, 2023), supervised by Dr. Mousa Farajallah: https://scholar.ppu.edu/handle/123456789/9125

## License

MIT License (see `LICENSE`).
