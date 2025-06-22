# journalot

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

`journalot` is a CLI tool for maintaining a daily markdown journal with Git-based version control. It's designed to be lightweight and easy to use, promoting mindfulness and reflection. 

You can also search past entries by keyword or date using command-line tools like grep or fzf. For example, grep "confidence" or "new idea" ~/journalot/*.md

## ✅ Features
-   Creates a daily journal file: `YYYY-MM-DD.md`
-   Opens it in VS Code
-   Auto-commits and pushes to your private or public GitHub repo
-   Works across multiple devices
-   Promotes mindfulness through lightweight journaling

## 🛠️ Installation

```bash
git clone git@github.com:jtaylortech/journalot.git
cd journalot
sudo ./install.sh
```

## 🔐 SSH Setup
Make sure you have SSH access set up for GitHub. [Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## 🔄 Set Up Your Own Private Journal Repo
By default, this repo points to my public GitHub. To push your own journal entries:
1. Create a new private repo on GitHub (e.g., `journalot-private`)
2. Replace the remote:
```bash
   git remote remove origin
   git remote add origin git@github.com:<your-username>/journalot-private.git
   git push -u origin main
 ```

## 📦 Use
`journal` 

---

### ✏️ Customizations
You can modify the journal directory or change editors (e.g. `nano`, `vim`) by editing the `bin/journal` script.

---

## 🪪 5. **LICENSE**
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.