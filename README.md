<img width="650" alt="image" src="https://github.com/user-attachments/assets/966c9901-3ef6-4203-b2e9-daf8afd04043" />
# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Expanding the ESLint configuration

If you are developing a production application, we recommend using TypeScript and enable type-aware lint rules. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.

# 🧠 Employee Churn Analysis Dashboard

## 🚀 Objective

This project aims to identify and visualize employee churn patterns using real-world data. The main goal was to:
- Preprocess and unify unstructured datasets
- Perform data analysis to derive key insights
- Build an interactive Looker Studio dashboard
- Deploy the dashboard through a React-based web application hosted on Google Cloud Platform (GCP)

---

## 📊 Project Overview

High employee turnover is costly and disruptive. Understanding **why employees leave** can help organizations take preventive measures. This project uses data engineering and visualization to surface actionable insights from employee data.

---

## 🧱 Tech Stack

- **Frontend**: React + Vite
- **Visualization**: Looker Studio (Google Data Studio)
- **Cloud Hosting**: Google Cloud Platform (Cloud Storage)
- **Data Processing**: Google BigQuery (for dataset structuring and transformation)
- **Deployment Tools**: `gsutil` CLI for uploading static files
- **Optional Pipeline (for extension)**: GitHub Actions or GCP Cloud Build for CI/CD

---

## 📁 Project Structure


---

## 📌 Key Features

- Embedded Looker Studio dashboard inside a React application
- Responsive UI with clean alignment and full-screen iframe support
- Hosted on GCP for scalability and public access
- Clean and organized data pipeline from preprocessing to visualization

---

## 🧹 Data Preprocessing Summary

- Merged multiple unstructured datasets using BigQuery
- Resolved type mismatches (e.g., float vs string) in union operations
- Standardized column names and data types for smooth analysis
- Created a derived field `Attrition_Status` (Quit/Stayed)
- Mapped categorical satisfaction levels (e.g., “High”, “Low”) to numerical scales

---

## 🌐 Live Demo

> **Hosted Link**: [[Click Here to View the Dashboard](https://storage.googleapis.com/YOUR_BUCKET_NAME/index.html)  ](https://drive.google.com/drive/folders/1jRS-SqYl0nbDBY_vP076JPU6LUFDO_T_?usp=sharing)
> *(Replace with your actual public GCP bucket link)*

---

## 🛠️ How to Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/churn-dashboard.git
   cd churn-dashboard
   npm run dev
