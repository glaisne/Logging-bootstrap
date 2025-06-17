# Logging-bootstrap

[![Terraform CI](https://github.com/glaisne/Logging-bootstrap/actions/workflows/ci.yml/badge.svg)](https://github.com/glaisne/Logging-bootstrap/actions/workflows/ci.yml)
[![Docs – GitHub Pages](https://img.shields.io/badge/docs-gh--pages-blue)](https://glaisne.github.io/Logging-bootstrap)

> *Replace* `Logging-bootstrap`, `Logging-bootstrap`, and `glaisne` with real values.  
> If you use the automation script I shared, the title and slug are filled in automatically—edit the owner once or extend the script to inject it.

---

## 🌟 Overview

This repository contains a **mini-architecture** built with **Terraform 1.x** for Microsoft Azure.  
It serves both as:

1. A **working sample** you can deploy in minutes, and  
2. A **portfolio artifact** that demonstrates clean, production-minded Infrastructure-as-Code.

### Key features

- Remote backend (Azure Blob) with state locking  
- CI pipeline: `fmt → validate → tflint → tfsec → infracost`  
- Modular Terraform structure ready for reuse  
- Auto-generated architecture diagram & docs site (GitHub Pages)

---

## 🚀 Quick start

```bash
# 1  Copy example variable values
cp envs/dev.example.tfvars__ envs/dev.tfvars

# 2  Initialise Terraform (local state first)
terraform init

# 3  Plan & apply
terraform apply -var-file=envs/dev.tfvars

# 4  Destroy when finished
terraform destroy -var-file=envs/dev.tfvars
