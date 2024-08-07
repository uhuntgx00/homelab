# Test Homelab

**[Features](#features) • [Get Started](#get-started) • [Documentation](https://homelab.khuedoan.com)**

[![tag](https://img.shields.io/github/v/tag/khuedoan/homelab?style=flat-square&logo=semver&logoColor=white)](https://github.com/khuedoan/homelab/tags)
[![document](https://img.shields.io/website?label=document&logo=gitbook&logoColor=white&style=flat-square&url=https%3A%2F%2Fhomelab.khuedoan.com)](https://homelab.khuedoan.com)
[![license](https://img.shields.io/github/license/khuedoan/homelab?style=flat-square&logo=gnu&logoColor=white)](https://www.gnu.org/licenses/gpl-3.0.html)

This project utilizes [Infrastructure as Code](https://en.wikipedia.org/wiki/Infrastructure_as_code) and [GitOps](https://www.weave.works/technologies/gitops) to automate provisioning, operating, and updating self-hosted services in my homelab.
It can be used as a highly customizable framework to build your own homelab.

> **What is a homelab?**
>
> Homelab is a laboratory at home where you can self-host, experiment with new technologies, practice for certifications, and so on.
> For more information about homelab in general, see the [r/homelab introduction](https://www.reddit.com/r/homelab/wiki/introduction).

## Overview

Project status: **ALPHA**

This project is still in the experimental stage, and I don't use anything critical on it.
Expect breaking changes that may require a complete redeployment.
A proper upgrade path is planned for the stable release.
More information can be found in [the roadmap](#roadmap) below.

### Hardware

![Hardware]() _replace_

- 5 × SFF `Beelink Mini PC`:
    - CPU: `Intel Core N95 @ 3.40GHz`
    - RAM: `8GB`
    - SSD: `256GB`
- TP-Link `TL-SG108E` switch:
    - Ports: `8`
    - Speed: `1000Mbps`
- DDW35U3 Enclosure:
    - `8 TB Sata`

### Features

- [x] Common applications: Gitea, Seafile, Jellyfin, Paperless...
- [x] Automated bare metal provisioning with PXE boot
- [x] Automated Kubernetes installation and management
- [x] Installing and managing applications using GitOps
- [x] Automatic rolling upgrade for OS and Kubernetes
- [x] Automatically update apps (with approval)
- [x] Modular architecture, easy to add or remove features/components
- [x] Automated certificate management
- [x] Automatically update DNS records for exposed services
- [x] VPN without port forwarding
- [x] Expose services to the internet securely with [Cloudflare Tunnel](https://www.cloudflare.com/products/tunnel/)
- [x] CI/CD platform
- [x] Private container registry
- [x] Distributed storage
- [x] Support multiple environments (dev, prod)
- [ ] Monitoring and alerting 🚧
- [ ] Automated offsite backups 🚧
- [ ] Single sign-on 🚧
- [x] Infrastructure testing

Some demo videos and screenshots are shown here.
They can't capture all the project's features, but they are sufficient to get a concept of it.

| Demo                                                                                        |
| :--:                                                                                        |
| [![][deploy-demo]](https://asciinema.org/a/xkBRkwC6e9RAzVuMDXH3nGHp7)                       |
| Deploy with a single command (after updating the configuration files)                       |
| [![][pxe-demo]](https://www.youtube.com/watch?v=y-d7btNNAT8)                                |
| PXE boot                                                                                    |
| [![][homepage-demo]][homepage-demo]                                                         |
| Homepage with Ingress discovery powered by [Hajimari](https://github.com/toboshii/hajimari) |
| [![][grafana-demo]][grafana-demo]                                                           |
| Monitoring dashboard powered by [Grafana](https://grafana.com/)                             |
| [![][gitea-demo]][gitea-demo]                                                               |
| Git server powered by [Gitea](https://gitea.io/en-us/)                                      |
| [![][matrix-demo]][matrix-demo]                                                             |
| [Matrix](https://matrix.org/) chat server                                                   |
| [![][tekton-demo]][tekton-demo]                                                             |
| Continuous integration with [Tekton](https://tekton.dev/)                                   |
| [![][argocd-demo]][argocd-demo]                                                             |
| Continuous deployment with [ArgoCD](https://argoproj.github.io/cd/)                         |
| [![][lens-demo]][lens-demo]                                                                 |
| Cluster management using [Lens](https://k8slens.dev/)                                       |
| [![][vault-demo]][vault-demo]                                                               |
| Secret management with [Vault](https://www.vaultproject.io/)                                |

### Terms

| Term |
| ---- |
| [PXE](https://www.techopedia.com/definition/26200/preboot-execution-environment-pxe) _(Preboot Execution Environment)_ |
| [SFF](https://www.lenovo.com/us/en/glossary/what-is-sff/?orgRef=https%253A%252F%252Fwww.google.com%252F) _(Small Form Factor)_ |
| [DNS](https://www.techopedia.com/2/28806/internet/12-dns-records-explained) _(Domain Name System)_ |
| [CI/CD](https://www.redhat.com/en/topics/devops/what-is-ci-cd) _(Continuous Integration/Continuous Deployment)_ |
| ![CI/CD](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAABUoTg0hRIRysVXsNZg21ojLCOSsljUElA&s) |
| ![IaC]() _(Infrastructure as Code)_ |
| ![TFTP]() _(Trivial File Transfer Protocol)_ |

### DevOps Tools

| Category | Tool |
| -------- | ---- |
| Version Control | Git |
| Continuous Integration | GitLab, Jenkins |
| Continuous Deployment | Ansible, Docker |
| Infrastructure as Code (IaC) | Terraform, OpenTufu |
| Configuration Management | Chef, Puppet |
| Continuous Monitoring | Prometheus |
| Collaboration/Commmunication | |
| Cloud Platforms | |
| Testing Automation | [Selenium](https://www.selenium.dev/documentation/legacy/developers/ci_tool/) |
| Log Management | |
| Project Management | [Monday](https://monday.com/), [Wrike](https://www.wrike.com/vap/), [ClickUp](https://clickup.com/) |

### Tech stack

| Logo | Name | Description |
| ---- | ---- | ----------- |
| <img src="https://icon.icepanel.io/Technology/png-shadow-512/Ansible.png" width="32"/> | [Ansible](https://www.ansible.com) | Automate bare metal provisioning and configuration |
| <img src="https://icon.icepanel.io/Technology/svg/Argo-CD.svg" width="32"/> | [ArgoCD](https://argoproj.github.io/cd) | GitOps tool built to deploy applications to Kubernetes |
| <img src="https://github.com/jetstack/cert-manager/raw/master/logo/logo.png" width="32"/> | [cert-manager](https://cert-manager.io) | Cloud native certificate management |
| <img src="https://icon.icepanel.io/Technology/svg/Cloudflare.svg" width="32"/> | [Cloudflare](https://www.cloudflare.com) | DNS and Tunnel |
| <img src="https://wp-cdn.pi-hole.net/wp-content/uploads/2016/12/Vortex-R.png" width="32"/> | [Pi-Hole](https://pi-hole.net/) | DNS Server |
| <img src="https://github.com/kubernetes-sigs/external-dns/raw/master/docs/img/external-dns.png" width="32"/> | [ExternalDNS](https://github.com/kubernetes-sigs/external-dns) | Synchronizes exposed Kubernetes Services and Ingresses with DNS providers |
| <img src="https://icon.icepanel.io/Technology/svg/Docker.svg" width="32"/> | [Docker](https://www.docker.com) | Ephemeral PXE server and convenient tools container |
| <img src="https://github.com/distribution/distribution/raw/main/distribution-logo.svg" width="32"/> | [Docker Registry](https://github.com/distribution/distribution) | Private container registry |
| <img src="https://upload.wikimedia.org/wikipedia/commons/b/bb/Gitea_Logo.svg" width="32"/> | [Gitea](https://gitea.com) | Self-hosted Git service |
| <img src="https://icon.icepanel.io/Technology/svg/GitLab.svg" width="32"/> | [GitLab](https://about.gitlab.com/) | Self-hosted Git service |
| <img src="https://avatars.githubusercontent.com/u/47602533?s=200&v=4" width="32"/> | [Tekton](https://tekton.dev) | Cloud native solution for building CI/CD systems |
| <img src="https://icon.icepanel.io/Technology/svg/Grafana.svg" width="32"/> | [Grafana](https://grafana.com) | Operational dashboards |
| <img src="https://github.com/grafana/loki/blob/main/docs/sources/logo.png?raw=true" width="32"/> | [Loki](https://grafana.com/oss/loki) | Log aggregation system |
| <img src="https://icon.icepanel.io/Technology/svg/Prometheus.svg" width="32"/> | [Prometheus](https://prometheus.io) | Systems monitoring and alerting toolkit |
| <img src="https://github.com/kubernetes/kubernetes/blob/master/logo/logo.png" width="32"/> | [Kubernetes](https://kubernetes.io) | Container-orchestration system |
| <img src="https://icon.icepanel.io/Technology/svg/K3s.svg" width="32"/> | [K3s](https://k3s.io) | Lightweight distribution of Kubernetes |
| <img src="https://helm.sh/img/helm.svg" width="32"/> | [Helm](https://helm.sh) | Package manager for Kubernetes |
| <img src="https://avatars.githubusercontent.com/u/60239468?s=200&v=4" width="32"/> | [MetalLB](https://metallb.org) | Bare metal load-balancer for Kubernetes |
| <img src="https://icon.icepanel.io/Technology/svg/NGINX.svg" width="32"/> | [NGINX](https://www.nginx.com) | Kubernetes Ingress Controller |
| <img src="https://icon.icepanel.io/Technology/svg/Rancher.svg" width="32"/> | [RancherD](https://rancherdesktop.io/) | Container/Kubernetes management on the Desktop |
| <img src="https://longhorn.io/img/logos/longhorn-icon-white.png" width="32"/> | [Longhorn](https://longhorn.io) | Cloud native distributed block storage for Kubernetes |
| <img src="[https://longhorn.io/img/logos/longhorn-icon-white.png](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEsE95sy7vBrIRGuyyg4kKqsfGlM-_rhdoyw&s)" width="32"/> | [Lens](https://k8slens.dev/) | Kubernetes management |
| <img src="https://icon.icepanel.io/Technology/svg/HashiCorp-Vault.svg" width="32"/> | [Vault](https://www.vaultproject.io) | Secrets and encryption management system |
| <img src="https://docs.renovatebot.com/assets/images/logo.png" width="32"/> | [Renovate](https://www.whitesourcesoftware.com/free-developer-tools/renovate) | Automatically update dependencies |
| <img src="https://icon.icepanel.io/Technology/svg/Ubuntu.svg" width="32"/> | [Ubuntu](https://ubuntu.com/) | Base OS |
| <img src="https://icon.icepanel.io/Technology/svg/NixOS.svg" width="32"/> | [NixOS](https://nixos.org/) | Declarative builds and deployments |
| <img src="https://icon.icepanel.io/Technology/svg/HashiCorp-Terraform.svg" width="32"/> | [Terraform](https://www.terraform.io/) | Automated infrastructure as code |
| <img src="https://avatars.githubusercontent.com/u/142061836?s=280&v=4" width="32"/> | [OpenTofu](https://opentofu.org/) | Automated infrastructure as code |
| | [Knative](https://knative.dev/) | Serverless containers |
| | [Talos](https://www.talos.dev/) | Kubernetes Linux OS |

<table>
    <tr>
        <th>Logo</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><img width="32" src="https://docs.zerotier.com/img/ZeroTierIcon.png"></td>
        <td><a href="https://zerotier.com">ZeroTier</a></td>
        <td>VPN without port forwarding</td>
    </tr>
</table>

## Get Started

- [Try it out locally](https://homelab.khuedoan.com/installation/sandbox) without any hardware (just 4 commands!)
- [Deploy on real hardware](https://homelab.khuedoan.com/installation/production/prerequisites) for production workload

## Roadmap

See [roadmap](https://homelab.khuedoan.com/reference/roadmap) and [open issues](https://github.com/khuedoan/homelab/issues) for a list of proposed features and known issues.

## License

Copyright &copy; 2020 - 2022 Khue Doan

Distributed under the GPLv3 License.
See [license page](https://homelab.khuedoan.com/reference/license) or `LICENSE.md` file for more information.

## References

- [Ephemeral PXE server inspired by Minimal First Machine in the DC](https://speakerdeck.com/amcguign/minimal-first-machine-in-the-dc)
- [ArgoCD usage and monitoring configuration in locmai/humble](https://github.com/locmai/humble)
- [README template](https://github.com/othneildrew/Best-README-Template)
- [Run the same Cloudflare Tunnel across many `cloudflared` processes](https://developers.cloudflare.com/cloudflare-one/tutorials/many-cfd-one-tunnel)
- [MAC address environment variable in GRUB config](https://askubuntu.com/questions/1272400/how-do-i-automate-network-installation-of-many-ubuntu-18-04-systems-with-efi-and)
- [Official k3s systemd service file](https://github.com/k3s-io/k3s/blob/master/k3s.service)
- [Official Cloudflare Tunnel examples](https://github.com/cloudflare/argo-tunnel-examples)
- [Initialize GitOps repository on Gitea and integrate with Tekton by RedHat](https://github.com/redhat-scholars/tekton-tutorial/tree/master/triggers)
- [SSO configuration from xUnholy/k8s-gitops](https://github.com/xUnholy/k8s-gitops)
- [Pre-commit config from k8s-at-home/flux-cluster-template](https://github.com/k8s-at-home/flux-cluster-template)
- [Diátaxis technical documentation framework](https://diataxis.fr)
- [Official Terratest examples](https://github.com/gruntwork-io/terratest/tree/master/test)

