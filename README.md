# CS 598 — Deep Learning for Healthcare  
## Paper Reproduction: *Attention-Based Network for Weak Labels in Neonatal Seizure Detection*

This repository contains our implementation and reproduction of the 2020 paper:

> Isaev DY, Tchapyjnikov D, Cotten CM, Tanaka D, Martinez N, Bertran M, Sapiro G, Carlson D.  
> **Attention-Based Network for Weak Labels in Neonatal Seizure Detection.**  
> *Proceedings of the Machine Learning Research (PMLR)*, Vol. 126, pp. 479–507, 2020.  
> [PMID: 32995751](https://pubmed.ncbi.nlm.nih.gov/32995751) | [PMCID: PMC7521836](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7521836)

## Get Started

Clone the repo into your desired directory:

```bash
git clone git@github.com:aseyedia/cs598-repro-final.git
cd repo
git submodule update --init
git submodule update --recursive
```

Run the following Docker command to open up the Jupyter Notebook server in the repo directory:

```bash
docker run -it --rm \
  -p 8888:8888 \
  -v "$PWD:/home/jovyan/work" \
  -e JUPYTER_TOKEN=mytoken \
  quay.io/jupyter/tensorflow-notebook:cuda-latest
```

## 📚 References

- Isaev DY et al. *Attention-Based Network for Weak Labels in Neonatal Seizure Detection.*  
  [PMID: 32995751](https://pubmed.ncbi.nlm.nih.gov/32995751) | [Paper PDF](https://proceedings.mlr.press/v126/isaev20a/isaev20a.pdf)
