---
layout: default
title: FinOps hubs
has_children: true
nav_order: 20
description: 'Reliable, trustworthy platform for cost analytics, insights, and optimization.'
permalink: /hubs
---

<span class="fs-9 d-block mb-4">FinOps hubs</span>
Open, extensible, and scalable cost governance for the enterprise.
{: .fs-6 .fw-300 }

[Deploy](#-create-a-new-hub){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-4 }
[Learn more](#️-why-finops-hubs){: .btn .fs-5 .mb-4 .mb-md-0 .mr-4 }

<details open markdown="1">
   <summary class="fs-2 text-uppercase">On this page</summary>

- [🙋‍♀️ Why FinOps hubs?](#️-why-finops-hubs)
- [🌟 Benefits](#-benefits)
- [📦 What's included](#-whats-included)
- [➕ Create a new hub](#-create-a-new-hub)
- [🛫 Get started with hubs](#-get-started-with-hubs)
- [🧰 Related tools](#-related-tools)

</details>

---

FinOps hubs are a reliable, trustworthy platform for cost analytics, insights, and optimization – virtual command centers for leaders throughout the organization to report on, monitor, and optimize cost based on their organizational needs. FinOps hubs focus on 3 core design principles:

- **Be the standard**<br>_<sup>Strive to be the principal embodiment of the FinOps Framework.</sup>_
- **Built for scale**<br>_<sup>Designed to support the largest accounts and organizations.</sup>_
- **Open and extensible**<br>_<sup>Embrace the ecosystem and prioritize enabling the platform.</sup>_

We are very early in our journey. Today, FinOps hubs extend Cost Management by exporting cost details to a consolidated storage account and addressing a few of the inherent limitations that make exports more difficult to use. In their most basic form, FinOps hubs enable more Power BI reporting options. On the more advanced end, FinOps hubs are a foundation for you to build your own cost management and optimization solution.

<blockquote class="highlight-green-title" markdown="1">
  💵 Estimated cost: $25 per $1M in cost
  
  Exact cost of the solution may vary. Cost is primarily for data storage and number of times data is ingested. Pipelines will run once a day per export.
</blockquote>

<br>

## 🙋‍♀️ Why FinOps hubs?

Many organizations that use Microsoft Cost Management eventually hit a wall where they need some capability that isn't natively available. When they do, their only options are to leverage one of the many third party tools or build something from scratch. While the cost management tooling ecosystem is rich and vast with many great options, they may be overkill or perhaps they don't solve specific needs. In these cases, organizations export cost data and build a custom solution. But this comes with many challenges, as these organizations are not generally staffed with the data engineers needed to design, build, and maintain a scalable data platform. FinOps hubs seeks to provide that foundation to streamline efforts in getting up and running with your own homegrown cost management solution.

FinOps hubs will streamline implementing the FinOps Framework, are being designed to scale to meet the largest enterprise needs, and will be open and extensible to support building custom solutions without the hassle of building the backend data store. FinOps hubs are designed for and by the community. Please join the discussion and let us know what you'd like to see next or learn how to contribute and be a part of the team.

[Join the conversation](https://github.com/microsoft/finops-toolkit/discussions){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }
[Learn how to contribute](https://github.com/microsoft/finops-toolkit/blob/dev/CONTRIBUTING.md){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }

<br>

## 🌟 Benefits

- Clean up duplicated data in daily Cost Management exports (and save money on storage).
- Convert exported data to parquet for faster data access.
- Connect Power BI to subscriptions, resource groups, and other scopes.
- Connect Power BI to Azure Government and Microsoft Online Services Agreement accounts.
- Report on multiple subscriptions, resource groups, or billing accounts.
- Preview cost data in the [FinOps Open Cost and Usage Specification (FOCUS)](https://focus.finops.org) schema.
- _Coming soon: Ingest data from subscriptions in multiple tenants into a single storage account._
- _Coming soon: Normalize cost data across account types._
- _Coming soon: Connect Power BI to Azure China accounts._
- _Coming soon: Streamlined deployment and management with PowerShell._
- _Coming soon: Ingest data into Azure Data Explorer._

<br>

## 📦 What's included

The FinOps hub template includes the following resources:

- Storage account (Data Lake Storage Gen2) to hold all cost data.
- Data Factory instance to manage data ingestion and cleanup.
- Key Vault to store the Data Factory system managed identity credentials.

Once deployed, you can report on the data in Power BI or by connecting to the storage account directly.

<img alt="Screenshot of the cost summary report" style="max-width:200px" src="https://user-images.githubusercontent.com/399533/216882658-45f026f1-c895-48ca-81e2-35765af8e29e.png">
<img alt="Screenshot of the services cost report" style="max-width:200px" src="https://user-images.githubusercontent.com/399533/216882700-4e04b589-0580-4e49-9b40-9f5948792975.png">
<img alt="Screenshot of the commitment-based discounts coverage report" style="max-width:200px" src="https://user-images.githubusercontent.com/399533/216882916-bb7ecfa3-d092-4ae2-88e1-7a0425c14dca.png">

[Browse reports](./reports/README.md){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }
[See the template](./template.md){: .btn .mt-2 .mb-4 .mb-md-0 .mr-4 }

<br>

## ➕ Create a new hub

1. Register the Microsoft.EventGrid and Microsoft.CostManagementExports resource providers. See [Register a resource provider](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-providers-and-types#register-resource-provider) for details.
2. [Deploy the **finops-hub** template](../resources/deploy.md).

   [![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://aka.ms/finops/hubs/deploy) &nbsp; [![Deploy To Azure US Gov](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://aka.ms/finops/hubs/deploy/gov) &nbsp; [![Deploy To Azure China](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazurechina.svg?sanitize=true)](https://aka.ms/finops/hubs/deploy/china) 

3. [Create a new cost export](https://learn.microsoft.com/azure/cost-management-billing/costs/tutorial-export-acm-data?tabs=azure-portal) using the following settings:

   - **Metric** = `Amortized cost`
   - **Export type** = `Daily export of month-to-date costs`
     <blockquote class="tip" markdown="1">
       _Configuring a daily export starts in the current month. If you want to backfill historical data, create a one-time export and set the start/end dates to the desired date range._
     </blockquote>
   - **File Partitioning** = On
   - **Storage account** = (Use subscription/resource from step 1)
   - **Container** = `msexports`
   - **Directory** = (Use the resource ID of the scope you're exporting without the first "/")

4. Run your export.
   - Exports can take up to a day to show up after first created.
   - Use the **Run now** command at the top of the Cost Management Exports page.
   - Your data should be available within 15 minutes or so, depending on how big your account is.
5. Download one or more of the available Power BI starter templates from the [latest release](https://github.com/microsoft/finops-toolkit/releases):
   - [Cost summary](./reports/cost-summary.md) for standard cost roll-ups.
   - [Commitment discounts](./reports/commitment-discounts.md) for commitment-based savings utilization and coverage.
6. [Connect Power BI to your hub](./reports/README.md#setup-a-finops-hub-report)

If you run into any issues, see [Troubleshooting Power BI reports](./troubleshooting.md).

<br>

## 🛫 Get started with hubs

After deploying a hub instance, there are several ways for you to get started:

1. Customize the built-in Power BI reports.

   Our Power BI reports are starter templates and intended to be customized. We encourage you to customize as needed. [Learn more](./reports/README.md).

2. Create your own Power BI reports.

   If you'd like to create your own reports or add cost data to an existing report, you can either [copy queries from a pre-built report](./reports/README.md#setup-a-finops-hub-report) or [connect manually](./reports/README.md#connect-manually) using the Azure Data Lake Storage Gen2 connector.

   <!-- NOTE TO CONTRIBUTORS: Keep this info note in sync with the same one under #3 below. -->

   <blockquote class="note" markdown="1">
     _The schema may change multiple times before the 0.1 release. We will ensure Power BI reports have backwards compatibility, but if you access data directly, you may run into breaking changes with new releases. Familiarize yourself with [upcoming releases](https://aka.ms/finops/toolkit/roadmap) and review the [changelog](../changelog.md) for breaking changes before you update._
   </blockquote>

3. Access the cost data from custom tools.

   Cost data is stored in an [Azure Data Lake Storage Gen2](https://learn.microsoft.com/azure/storage/blobs/data-lake-storage-introduction) account. You can use any tool that supports Azure Data Lake Storage Gen2 to access the data. Refer to the [data dictionary](./data-dictionary.md) for details about available columns.

   <!-- NOTE TO CONTRIBUTORS: Keep this info note in sync with the same one under #2 above. -->

   <blockquote class="note" markdown="1">
     _The schema may change multiple times before the 0.1 release. We will ensure Power BI reports have backwards compatibility, but if you access data directly, you may run into breaking changes with new releases. Familiarize yourself with [upcoming releases](https://aka.ms/finops/toolkit/roadmap) and review the [changelog](changelog.md) for breaking changes before you update._
   </blockquote>

4. Apply cost allocation logic, augment, or manipulate your cost data using Data Factory.

   [Data Factory](https://learn.microsoft.com/azure/data-factory/introduction) is used to ingest and transform data. We recommend using Data Factory as a cost-efficient solution to apply custom logic to your cost data. Do not modify built-in pipelines or data in the **msexports** container. If you create custom pipelines, monitor new data in the **ingestion** container and use a consistent prefix to ensure they don't overlap with new pipelines. Refer to [data processing](./data-processing.md) for details about how data is processed.

   <blockquote class="important" markdown="1">
     _Keep in mind this is the primary area we are planning to evolve in [upcoming FinOps toolkit releases](https://aka.ms/finops/toolkit/roadmap). Please familiarize yourself with our roadmap to avoid conflicts with future updates. Consider [contributing to the project](../CONTRIBUTING.md) to add support for new scenarios to avoid conflicts._
   </blockquote>

5. Generate custom alerts using Power Automate.

   You have many options for generating custom alerts. [Power Automate](https://powerautomate.microsoft.com/connectors/details/shared_azureblob/azure-blob-storage) is a great option for people who are new to automation but you can also use [Data Factory](https://learn.microsoft.com/azure/data-factory/introduction), [Functions](https://learn.microsoft.com/azure/azure-functions/functions-overview), or any other service that supports custom code or direct access to data in Azure Data Lake Storage Gen2.

No matter what you choose to do, we recommend creating a new Bicep module to support updating your solution. You can reference `finops-hub/main.bicep` or `hub.bicep` directly to ensure you can apply new updates as they're released.

If you need to change `hub.bicep`, be sure to track those changes and re-apply them when upgrading to the latest release. We generally don't recommend modifying the template or modules directly to avoid conflicts with future updates. Instead, consider contributing those changes back to the open source project. [Learn more](https://github.com/microsoft/finops-toolkit/blob/main/CONTRIBUTING.md).

If you access data in storage or are creating or customizing Power BI reports, please refer to the [data dictionary](data-dictionary.md) for details about the available columns.

<br>

---

## 🧰 Related tools

{% include tools.md pbi="1" ps="1" opt="1" %}

<br>
