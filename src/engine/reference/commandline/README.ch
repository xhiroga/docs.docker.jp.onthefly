%This is the change file for the original Docker's Documentation file.
%This is part of Japanese translation version for Docker's Documantation.

@x
# About these files
@y
# About these files
@z

@x
The files in this directory are stub files which include the file
`/_includes/cli.md`, which parses YAML files generated from the
[`docker/cli`](https://github.com/docker/cli) repository. The YAML files
are parsed into output files like
[/engine/reference/commandline/build/](/engine/reference/commandline/build/).
@y
The files in this directory are stub files which include the file
`/_includes/cli.md`, which parses YAML files generated from the
[`docker/cli`](https://github.com/docker/cli) repository. The YAML files
are parsed into output files like
[/engine/reference/commandline/build/](/engine/reference/commandline/build/).
@z

@x
## How the output is generated
@y
## How the output is generated
@z

@x
The output files are composed from two sources:
@y
The output files are composed from two sources:
@z

@x
- The **Description** and **Usage** sections comes directly from
  the CLI source code in that repository.
@y
- The **Description** and **Usage** sections comes directly from
  the CLI source code in that repository.
@z

@x
- The **Extended Description** and **Examples** sections are pulled into the
  YAML from the files in [https://github.com/docker/cli/tree/master/docs/reference/commandline](https://github.com/docker/cli/tree/master/docs/reference/commandline) for Docker CLI commands and [https://github.com/docker/compose/tree/v2/docs/reference](https://github.com/docker/compose/tree/v2/docs/reference) for Docker Compose commands.
  Specifically, the Markdown inside the `## Description` and `## Examples`
  headings are parsed. Submit corrections to the text in those repositories.
@y
- The **Extended Description** and **Examples** sections are pulled into the
  YAML from the files in [https://github.com/docker/cli/tree/master/docs/reference/commandline](https://github.com/docker/cli/tree/master/docs/reference/commandline) for Docker CLI commands and [https://github.com/docker/compose/tree/v2/docs/reference](https://github.com/docker/compose/tree/v2/docs/reference) for Docker Compose commands.
  Specifically, the Markdown inside the `## Description` and `## Examples`
  headings are parsed. Submit corrections to the text in those repositories.
@z

@x
# Updating the YAML files
@y
# Updating the YAML files
@z

@x
The process for generating the YAML files is still in flux. Check with
@thaJeztah. Be sure to generate the YAML files with the correct
release branch of `docker/cli`, for example, the `19.03` branch.
@y
The process for generating the YAML files is still in flux. Check with
@thaJeztah. Be sure to generate the YAML files with the correct
release branch of `docker/cli`, for example, the `19.03` branch.
@z

@x
After generating the YAML files, replace the YAML files in
[https://github.com/docker/docker.github.io/tree/master/_data/engine-cli](https://github.com/docker/docker.github.io/tree/master/_data/engine-cli)
with the newly-generated files. Submit a pull request.
@y
After generating the YAML files, replace the YAML files in
[https://github.com/docker/docker.github.io/tree/master/_data/engine-cli](https://github.com/docker/docker.github.io/tree/master/_data/engine-cli)
with the newly-generated files. Submit a pull request.
@z
