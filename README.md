# Vim Rust Dev

A simple vim development environment for rust inside a docker container. Includes:

- Vim
- rustup (with nightly)
- And some standard tools, see the Dockerfile

## Installation

Use the shell scripts provided to create the image.

```bash
./build.sh
```

## Usage

```bash
# Initialize the container with the directory of your rust project
./create.sh ~/project_directory
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[Apache License 2.0](https://github.com/bayne/vim-rust-dev/blob/master/LICENSE)
