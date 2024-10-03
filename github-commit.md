To push your existing local repository to GitHub, follow the steps below:

### 1. **Create a Repository on GitHub**
- Go to [GitHub](https://github.com) and log in.
- Click on the **+** icon in the top-right corner and select **New repository**.
- Name your repository (e.g., `usco`).
- Optionally, add a description and choose whether the repository should be public or private.
- Do **not** initialize the repository with a `README`, `.gitignore`, or license file (since you already have these locally).

### 2. **Add the Remote Repository to Git**
Now that you have created a new repository on GitHub, add it as a remote for your local project.

Run the following commands in your terminal:

```bash
cd ~/Desktop/usco  # Go to your project directory

# Add the GitHub remote repository
git remote add origin git@github.com:<your-github-username>/<repo-name>.git
```

Replace `<your-github-username>` and `<repo-name>` with your actual GitHub username and the name of the repository you created (e.g., `usco`).

### 3. **Push Your Code to GitHub**
To push your local repository to GitHub, run:

```bash
# First, check the status of your local repo
git status

# Add all files to the staging area
git add .

# Commit your changes with a message
git commit -m "Initial commit"

# Push to the GitHub repository (main branch)
git push -u origin main
```

If your branch is named `master`, replace `main` with `master`.

### 4. **Verify**
Go to your repository on GitHub, and you should see all your files uploaded.

Let me know if you face any issues during the process!


# Remove the .next directory from Git
git rm -r --cached .next

# Commit the changes
git commit -m "Remove .next folder from the Git history"

# Push to GitHub
git push origin main
