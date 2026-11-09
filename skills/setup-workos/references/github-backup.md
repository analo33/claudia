# GitHub backup, step by step

Goal: a private copy of this workspace on GitHub, so it survives a broken computer and can be opened from another one. Follow the user's operating system. Give one step at a time, in the user's language, naming the app, the exact text to type and what they should see. Never push without the user's yes.

## 0. Check what exists

1. Check whether the folder has a `.git` folder (a local repository). If not, create it: run `git init` in the workspace root and tell the user "he activado el control de versiones local".
2. Check whether git is installed. If the command fails:
   - **Mac:** tell the user to open the Terminal app and type `git --version`. If macOS offers to install developer tools, accept and wait.
   - **Windows:** send them to https://git-scm.com/download/win, download, run the installer with the default options, then close and reopen their agent.
3. Check `.gitignore` exists and includes `.env` (it does in the template). Never stage `.env` or `CLAUDE.local.md`.

## 1. Create the GitHub account (skip if they have one)

1. Open https://github.com/signup in the browser.
2. Enter email, create a password and a username, verify the email. Tell the user to do this themselves: never type their password or email into any tool.
3. Confirm with the user when they are logged in.

## 2. Create the private repository

Preferred path, in the browser (no extra tools):

1. Open https://github.com/new.
2. Repository name: the name of this folder (for example `ai-workos` or their name). Description optional.
3. Select **Private**.
4. Leave "Add a README", ".gitignore" and "license" unchecked.
5. Click **Create repository**. GitHub shows a page with commands; ask the user to copy the URL that ends in `.git` (HTTPS) and paste it in the chat.

Alternative if the `gh` command is installed and logged in: `gh repo create <name> --private --source=. --remote=origin`. Ask before running it.

## 3. First commit and push

1. Stage everything except ignored files: `git add -A` is acceptable here because `.gitignore` protects secrets; show the list with `git status --short` first.
2. Commit: `git commit -m "AI WorkOS initial setup"`.
3. Connect the remote: `git remote add origin <URL pasted by the user>`.
4. Rename the branch if needed: `git branch -M main`.
5. Ask for the yes, then push: `git push -u origin main`.
6. Git will ask for credentials the first time:
   - **Windows:** a browser window opens (Git Credential Manager, installed with Git). The user signs in to GitHub there and authorizes. No token needed.
   - **Mac:** Username is their GitHub username. Password is **not** their GitHub password: they need a Personal Access Token. Guide them: GitHub → profile photo → Settings → Developer settings → Personal access tokens → Tokens (classic) → Generate new token → check `repo` → Generate → copy it once. They paste it in the terminal prompt themselves, never in the chat. macOS saves it in the Keychain.
7. Verify: open the repository page in the browser and confirm the files are there.

## 4. From then on

- `wrap-up` offers a commit at the end of each session and asks before pushing.
- To open the workspace on another computer: install git and the agent, then `git clone <URL>` into a permanent folder and open it as a project. `.env` is not in the copy on purpose: recreate it by hand.

## If something fails

- "Permission denied" or "Authentication failed": the token is wrong or expired. Generate a new one.
- "remote origin already exists": run `git remote set-url origin <URL>`.
- "rejected, non-fast-forward": someone (or another computer) pushed first. Run `git pull --rebase origin main`, then push again. Ask before running it.
