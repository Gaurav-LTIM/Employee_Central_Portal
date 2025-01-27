# Employee Central Portal

## Overview
The Employee Central Portal is a comprehensive application designed to manage user profiles, skills, and ratings with role-based access and automated document generation.

## Features
- User profile management with skill and rating updates.
- Role-based access control using XSUAA.
- Skill Screener Tab for competency-based resource allocation.
- Automated PDF resume generation using Puppeteer.
- Deployed to SAP HANA Cloud via Cloud Foundry.

## Technology Stack
- **Frontend**: SAP Fiori UI5
- **Backend**: SAP CAPM
- **Security**: XSUAA
- **PDF Generation**: Puppeteer
- **Cloud Platform**: SAP BTP
- **Deployment**: Cloud Foundry

## Setup and Installation
### Prerequisites
- SAP BTP account with Cloud Foundry enabled.
- Node.js installed.
- SAP Fiori Tools installed.

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>

# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
