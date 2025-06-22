# journalot

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

This provides a simple way to maintain a daily journal using text/markdown files, with automatic version control via Git. It is designed to be lightweight and easy to use, promoting mindfulness and reflection. 

You're then also able to view your journal entries from the past and grep for keywords or phrases or even search for specific dates.

## 🛠️ Installation

```bash
git clone git@github.com:jtaylortech/journalot.git
cd journalot
sudo ./install.sh
```

## ✅ Features
-   Creates a daily journal file: `YYYY-MM-DD.md`
-   Opens it in VS Code
-   Auto-commits and pushes to your private or public GitHub repo
-   Works across multiple devices
-   Promotes mindfulness through lightweight journaling
 
## 🔐 SSH Setup
Make sure you have SSH access set up for GitHub. [Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## 📦 Use
`journal` 

---

### ✏️ Customizations
You can modify the journal directory or change editors (e.g. `nano`, `vim`) by editing the `bin/journal` script.

---

## 🪪 5. **LICENSE**
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.