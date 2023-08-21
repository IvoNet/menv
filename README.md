# menv

Environment setter for maven.

With this command you can set a folder (structure) to a specific maven profile and maven opts.

# Prerequisites

- MacOS based computer
- maven already installed through [brew](https://brew.sh/)

# Install

- With [Homebrew](https://brew.sh)
- Please read the instructions carefully after installation

```bash
brew tap ivonet/cli
brew install menv
menv init
```

# Usage

```bash
brew help
```

## Environment variables

- MENV_VERBOSE : Verbose mode (default: true)
- MENV_DISABLE_WRAPPER : Disable the wrapper (default: false)
  A wrapper is the potentially available `mvnw.*` script in a project.

# License

    Copyright 2023 (c) Ivo Woltring

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# Special thanks

- [TheCheerfulDev](https://github.com/TheCheerfulDev/) for the nice
  improvements and great new feature requests and pull requests.

# Todo

- look at the returncodes. they seem to be inconsistent.
