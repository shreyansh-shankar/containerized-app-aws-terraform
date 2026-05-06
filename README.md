# 🚀 DevOps Demo Project

A simple Node.js API deployed on AWS EC2 using Docker and Terraform — fully automated without manual SSH.

---

## 📌 Overview

This project demonstrates how to:

* Build a basic Node.js API
* Containerize it using Docker
* Push the image to Docker Hub
* Provision infrastructure using Terraform
* Automatically deploy the app on AWS EC2 using `user_data`

---

## 🛠 Tech Stack

* Node.js (Express)
* Docker
* Terraform
* AWS EC2

---

## ⚙️ Features

* `/` → Basic response
* `/health` → Health check endpoint
* `/info` → Environment & version info

---

## 🚀 How it works

1. Terraform provisions an EC2 instance on AWS
2. During startup, `user_data` script:

   * Installs Docker
   * Pulls the Docker image
   * Runs the container
3. The app becomes available on port **3000**

---

## 🧪 Run locally (optional)

```bash
docker build -t devops-demo .
docker run -p 3000:3000 devops-demo
```

---

## ☁️ Deploy using Terraform

```bash
terraform init
terraform apply
```

After deployment, open:

```
http://<your-ec2-public-ip>:3000/health
```

---

## 📚 Learnings

* Infrastructure as Code (Terraform)
* Containerization (Docker)
* Basic cloud deployment (AWS EC2)
* Automating deployments without manual steps

---

## 🔮 Future Improvements

* Add HTTPS (SSL)
* Use Load Balancer
* CI/CD pipeline integration
* Container restart policies

---

## 👨‍💻 Author

Built as a hands-on DevOps learning project.
