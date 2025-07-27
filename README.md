# Git Workflow Starter Script

[![Made with Shell Script](https://img.shields.io/badge/Made%20with-Shell%20Script-1f425f.svg)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-blue)](https://www.gnu.org/software/bash/)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/knowoneactual)

A simple, interactive shell script to automate the best-practice steps for starting a new task in a Git repository.

### What Problem Does This Solve?

Every new piece of work (a feature, a bugfix) should start from an up-to-date `main` branch and be isolated in its own new branch. Forgetting to `git pull` or creating a branch from a stale one can cause merge conflicts and other headaches.

This script prevents those mistakes by turning a multi-step process into a single, guided command.

### How It Works

When you run the script, it will:

1.  **Check for uncommitted changes** to make sure your work is saved.
2.  Prompt you to enter a descriptive name for your new branch.
3.  Automatically switch to your main branch (`main` or `master`).
4.  Pull the latest changes from the remote to ensure your local version is up-to-date.
5.  Create and switch to your new branch.

You're left with a fresh, clean branch, ready for you to start coding.

-----

### Installation

There are two ways to use this script.

#### 1\. Per-Project (Simple)

1.  Download or copy the `start-work.sh` file into the root directory of your project.
2.  Make it executable (you only have to do this once per project):
    ```bash
    chmod +x start-work.sh
    ```

#### 2\. Global (Recommended for Personal Use)

This method lets you run the `start-work` command from the terminal in *any* Git repository on your system.

1.  Download `start-work.sh` to a common location, like your `Downloads` folder.
2.  Make it executable:
    ```bash
    chmod +x ~/Downloads/start-work.sh
    ```
3.  Move it to a location in your system's PATH. `/usr/local/bin` is a common choice.
    ```bash
    sudo mv ~/Downloads/start-work.sh /usr/local/bin/start-work
    ```
    Now you can run the command as just `start-work` instead of `./start-work.sh`.

-----

### Configuration

The script defaults to using `main` as the primary branch name. If you still use `master` or another name, you can change it by editing this line at the top of the script:

```sh
# Set the default main branch name. Change if you use "master".
MAIN_BRANCH="main"
```

### Usage

1.  Navigate to your project's directory in your terminal.
2.  Run the script.
      * If installed locally: `./start-work.sh`
      * If installed globally: `start-work`
3.  Follow the on-screen prompt to enter your new branch name, and the script will handle the rest.

### License

This project is licensed under the MIT License.
