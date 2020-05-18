# stm32f4-05-serial template
Cargo generate template for Rust embedded projects based on the stm32f401/stm32f411 "black pil" board.

## Install cargo-generate
if you don't already have it
```cargo install cargo-generate```

## Generate your project
```
cargo generate --git https://github.com/gregwoods/stm32f4-05-serial --name your-project-name
```

## [Optional] Set up source control
This step uses ```gh```, the GitHub cli client.
```
cd your-project-name
git init
gh repo create your-project-name
```

## Open in VS Code
