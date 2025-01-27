# Employee Central Portal

## Overview
This Portal is a comprehensive application designed to manage user profiles, skills, and ratings along with automated document generation.

## Features
- User profile management with skill and rating updates.
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

## Getting Started

Welcome to your new project.
It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends
`db/` | Database and Domain Modelling
`srv/` | service modelling and filtering logic
`package.json` | project metadata and configuration

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>

2. Navigate to the project folder and install dependencies:
   ```bash
   npm install

3. Preview Application, open terminal and navigate to root folder:
   ```bash
   npm start/npm run start-noflp

## Key Learnings and Highlights
- extensively linked database design.
- Automated resume generation with Puppeteer, improving efficiency.
- Deployed application to SAP HANA Cloud with Cloud Foundry.

## Future Enhancements
- Add integration with external APIs for real-time skill updates.
- Implement advanced analytics for tracking resource allocation trends.
- Provide multilingual support for global users.

