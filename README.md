# GCP Load Balancer Demo (Terraform Export)

This project was created in Google Cloud Platform using Cloud Shell and Terraform. It demonstrates:

- Two NGINX virtual machines
- A managed instance group
- A global HTTP Load Balancer
- Firewall rules and subnet configuration
- Startup scripts that display instance name

### How it was done

- Infrastructure was built in Cloud Shell via CLI
- Resources were exported with:
  `gcloud beta resource-config bulk-export`
- Exported files were organized into this folder

### Screenshots

## Screenshots

---

## 📸 Screenshots

### 🖥️ CLI Output

#### Final Apply Output
![final_apply](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Final_apply.jpg)

#### Initial Page Load
![Page_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_00.jpg)

#### Second Page Scroll
![Page_01](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_01.jpg)

#### Error on Group Creation
![error_00](https://github.com/Juanfm84/gcp-lb-demo/blob/main/screenshots/Error_00.jpg)

---

## 📸 Screenshots

### 🖥️ CLI Output

These were taken from the terminal during deployment using `gcloud` CLI.

#### ✅ Final Apply Output
![final_apply](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Final_apply.jpg)

#### 📄 Initial Output Page
![Page_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_00.jpg)

#### 📄 Continued Output Page
![Page_01](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Page_01.jpg)

#### ⚠️ Group Creation Error (naming)
![Error_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Error_00.jpg)

---

### 🌐 GCP Console (GUI Views)

Captured from the GCP web console during and after deployment.

#### 📊 CPU Monitoring
![Gui_cpu_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_Cpu_00.jpg)

#### 🧩 Instance Group Details
![Gui_Group_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_Group_00.jpg)

#### 🌐 Load Balancer Overview
![Gui_LoadBalancer_00](https://raw.githubusercontent.com/Juanfm84/gcp-lb-demo/main/screenshots/Gui_LoadBalancer_00.jpg)

---

### 🌍 Load Balancer Test (Browser)

Captured in Chrome to show round-robin switching between the two instances.

#### 🔁 First Load (Instance A)
![LoadBalancer_00](https://github.com/Juanfm84/gcp-lb-demo/blob/main/screenshots/Loadbalancer_00.jpg)

#### 🔁 Second Load (Instance B)
![LoadBalancer_01](https://github.com/Juanfm84/gcp-lb-demo/blob/main/screenshots/Loadbalancer_01.jpg)




---

© 2025 Juan Mireles
