# GCP Load Balancer Demo (Terraform Export)

This project was built in **Google Cloud Platform (GCP)** using **Cloud Shell** and the `gcloud` CLI. It demonstrates:

- Two NGINX virtual machines
- A managed instance group
- A global HTTP Load Balancer
- Firewall rules and subnet configuration
- Startup scripts that show the active instance

The infrastructure was deployed manually in the CLI and then exported using Terraform via:

```bash
gcloud beta resource-config bulk-export
```

All exported resource configurations are organized by type in this repo.

---

## 🔧 Tech Stack

- **Google Cloud Platform (GCP)**
- **Terraform** (via bulk export)
- **NGINX**
- **gcloud CLI**
- **GCP Console** (used for monitoring and screenshots)

---

## 📸 Screenshots

### 🖥️ Terminal Output

#### ✅ Final Apply
![Final Apply](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Final_apply.jpg)

#### 📄 Initial Page Output
![Page 00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_00.jpg)

#### 📄 Continued Page Output
![Page 01](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_01.jpg)

#### ⚠️ Instance Group Error (naming conflict)
![Error 00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Error_00.jpg)

---

### 🌐 GCP Console (GUI)

Captured from the GCP web console during and after deployment.

#### 📊 CPU Monitoring
![Gui_cpu_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_Cpu_00.jpg)

#### 🧩 Instance Group Overview
![Gui_Group_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_Group_00.jpg)

#### 🌍 Load Balancer Overview
![Gui_LoadBalancer_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_LoadBalancer_00.jpg)

---

### 🔁 Load Balancer Test (Browser)

Captured in Chrome to show the round-robin effect between the two instances via external IP.

#### Instance A
![LoadBalancer_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Loadbalancer_00.jpg)

#### Instance B
![LoadBalancer_01](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Loadbalancer_01.jpg)

---

© 2025 Juan Mireles
