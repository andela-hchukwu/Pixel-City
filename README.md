# Pixel-City

## Developing

We use a number of tools and techniques to ensure it’s easy to develop and contribute to the project.

### Sorting

One thing that happens when multiple people work on an Xcode project is crazy merge conflicts. Anytime a file is added or removed to/from a project, Xcode sorts the project file (somewhat randomly). This creates all sorts of problems with source control and results in many headaches.

The solution is to sort the file alphabetically prior to any commit.

We accomplish this using a git pre-commit hook that calls `xUnique`.

### xUnique

[xUnique](https://github.com/truebit/xUnique) is a python module.

It can be installed by running: `pip install xUnique`

It also installs a command line script `xunique` in directory `/usr/local/bin` (make sure you have added this directory to your `$PATH`), so that xUnique can be invoked directly from the command line.

### pre-commit hook

Here is an example pre-commit hook.

You can use it as a basis for modifying your `.git/hooks/pre-commit` hook file.

```
#!/bin/sh
/path/to/Pixel-City/Scripts/uniquify_projects.sh
```

Make sure that it has an executable bit (`chmod +x .git/hooks/pre-commit`) and that the path is correct.
