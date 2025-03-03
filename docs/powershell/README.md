---
layout: default
title: PowerShell
has_children: true
nav_order: 40
description: 'Automate and scale your FinOps efforts.'
permalink: /powershell
---

<span class="fs-9 d-block mb-4">PowerShell module</span>
Automate and scale your FinOps efforts with PowerShell commands that streamline operations and accelerate adoption across projects and teams.
{: .fs-6 .fw-300 }

[Install](#-install-the-module){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-4 }
[Commands](#-commands){: .btn .fs-5 .mb-4 .mb-md-0 .mr-4 }

<details open markdown="1">
   <summary class="fs-2 text-uppercase">On this page</summary>

- [📥 Install the module](#-install-the-module)
- [⚡ Commands](#-commands)
- [🙋‍♀️ Looking for more?](#️-looking-for-more)
- [🧰 Related tools](#-related-tools)

</details>

---

The FinOps toolkit PowerShell module is a collection of commands to automate and manage FinOps solutions. We're just getting started so let us know what you'd like to see next.

[PowerShell Gallery](https://www.powershellgallery.com/packages/FinOpsToolkit){: .btn .fs-5 .mb-4 .mb-md-0 .mr-4 }

<br>

## 📥 Install the module

```powershell
Import-Module -Name FinOpsToolkit
```

<br>

## ⚡ Commands

### General toolkit commands

- [Get-FinOpsToolkitVersion](toolkit/Get-FinOpsToolkitVersion.md) – Get details about available FinOps toolkit releases.

### FinOps hubs commands

- [Deploy-FinOpsHub](hubs/Deploy-FinOpsHub.md) – Deploy your first hub or update to the latest version.
- [Get-FinOpsHub](hubs/Get-FinOpsHub.md) – Get details about your FinOps hub instance.

### FinOps Open Cost and Usage Specification (FOCUS) commands

- [ConvertTo-FinOpsSchema](ConvertTo-FinOpsSchema.md) – Converts Cost Management cost data to the FOCUS schema.
- [Invoke-FinOpsSchema](Invoke-FinOpsSchemaTransform.md) – Loads Cost Management data from a CSV file, converts it to FOCUS schema, and saves it to a new CSV file.

### Open data commands

- [Get-FinOpsPricingUnit](Get-FinOpsPricingUnit.md) – Gets an Azure region ID and name.
- [Get-FinOpsRegion](Get-FinOpsRegion.md) – Gets an Azure region ID and name.
- [Get-FinOpsService](Get-FinOpsService.md) – Gets the name and category for a service, publisher, and cloud provider.

<br>

## 🙋‍♀️ Looking for more?

We'd love to hear about any commands or scripts you're looking for. Vote up (👍) existing ideas or create a new issue to suggest a new idea. We'll focus on ideas with the most votes.

[Vote on ideas](https://github.com/microsoft/finops-toolkit/issues?q=is%3Aissue+is%3Aopen+label%3A%22Area%3A+PowerShell%22+sort%3Areactions-%2B1-desc){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }
[Suggest an idea](https://github.com/microsoft/finops-toolkit/issues/new/choose){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }

<br>

---

## 🧰 Related tools

{% include tools.md hubs="1" bicep="1" %}

<br>
