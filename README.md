# README

This repository contains the scripts and markdown files necessary to generate a professional resume.

## Files

- `generate.sh`: A shell script to generate the resume from the markdown file.
- `resume.md`: The markdown file containing the resume content.

## Usage

### Install Dependencies

#### macOS

1. Install Homebrew if you don't have it:

    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. Install pandoc and LaTeX:

    ```sh
    brew install pandoc
    brew install --cask mactex
    ```

#### Linux

1. Update your package list:

    ```sh
    sudo apt-get update
    ```

2. Install pandoc and LaTeX:

    ```sh
    sudo apt-get install -y pandoc texlive-full
    ```

### Generate Resume

1. Ensure you have the necessary permissions to execute the script:

    ```sh
    chmod +x generate.sh
    ```

2. Run the script to generate the resume:

    ```sh
    ./generate.sh
    ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## Contact

For any inquiries, please contact [octaviojigo@hotmail.com](mailto:octaviojigo@hotmail.com).
