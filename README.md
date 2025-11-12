# humbleOS Personas

**Free. Flexible. Forever.**

A modular, community-driven system of developer personas for [humbleOS](https://github.com/Steve56UX/humbleOS)—a humble, beautiful Linux distribution built on Arch.

## What is humbleOS Personas?

humbleOS Personas is a **curated collection of developer toolkits** that allows new and experienced Linux users to quickly set up their perfect development environment. Instead of a bloated "everything kitchen sink" OS, users select their role(s), and get exactly what they need—nothing more, nothing less.

### Features

✅ **23+ Developer Personas** – Frontend, Backend, DevOps, AI/ML, Embedded, and more  
✅ **Multi-Select** – Combine personas (e.g., Full Stack + DevOps)  
✅ **Zero Bloat** – Only essential tools and frameworks  
✅ **Community-Driven** – Submit new personas or improve existing ones  
✅ **Arch-Native** – All packages from official Arch repos and AUR  
✅ **Versioned & Tested** – Automated CI/CD for package validation  

---

## Quick Start

### Installation During humbleOS Setup

1. Boot humbleOS installer
2. Select **"Choose Development Personas"**
3. Pick your role(s)
4. Installer auto-installs all packages

### Post-Install Installation

Already running humbleOS? Install personas anytime:

```bash
git clone https://github.com/Steve56UX/humbleOSPersonas.git
cd humbleOSPersonas
./scripts/install-persona.sh frontend-dev backend-dev
```

---

## Available Personas

### 🌐 Web Development
- **Frontend Developer** – React, Vue, Angular, Tailwind CSS
- **Backend Developer** – Python, Node.js, databases, Docker
- **Full Stack Developer** – Combined frontend + backend

### 📱 Mobile Development
- **Android Developer** – Android Studio, Kotlin, Java
- **iOS Developer** – Swift, development tools
- **Cross-Platform Mobile Developer** – Flutter, React Native

### 🤖 Data & AI
- **AI/ML Developer** – TensorFlow, PyTorch, ML frameworks
- **Data Scientist** – Pandas, Jupyter, R, statistical tools
- **Data Engineer** – Spark, Kafka, Airflow, ETL tools

### ☁️ Infrastructure & Operations
- **DevOps Engineer** – Docker, Kubernetes, CI/CD
- **Cloud Engineer** – AWS, Azure, GCP tooling
- **Site Reliability Engineer** – Monitoring, observability

### 🔒 Security & Testing
- **Security Engineer** – Kali tools, penetration testing
- **QA Engineer** – Selenium, Cypress, test automation

### 🎮 Specialized
- **Game Developer** – Unity, Godot, Blender
- **Blockchain Developer** – Solidity, Web3.js, Hardhat
- **Embedded Systems Developer** – ARM toolchains, Arduino
- **IoT Developer** – MQTT, edge computing
- **Robotics Engineer** – ROS, Gazebo

---

## Installation

### Option 1: Clone & Install

```bash
git clone https://github.com/Steve56UX/humbleOSPersonas.git
cd humbleOSPersonas
chmod +x scripts/install-persona.sh
./scripts/install-persona.sh frontend-dev
```

---

## Contributing

**We love community contributions!** Here's how:

- [Contributing Guide](CONTRIBUTING.md)
- [Add a New Persona](CONTRIBUTING.md#1-add-a-new-persona)
- [Report Issues](https://github.com/Steve56UX/humbleOSPersonas/issues)

---

## License

humbleOS Personas is released under the **[MIT License](LICENSE)** – free to use, modify, and distribute.

---

*humbleOS: Where Linux meets humility. Free Forever.*
