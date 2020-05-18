# stm32f4-05-serial

A simple project which runs on the stm32f411 black pill board (should also work on the stm32f401 variant)
It demonstrates the use of the USART functionality of stm32f4xx_hal
Cargo generate template for Rust embedded projects based on the stm32f401/stm32f411 "black pil" board.

## Install cargo-generate
if you don't already have it
```cargo install cargo-generate```

## Generate your project
```
cargo generate --git https://github.com/gregwoods/stm32f4-05-serial --name your-project-name
```

## [Optional] Set up source control
This step uses ```[gh](https://github.com/cli/cli)```, the GitHub cli client.
```
cd your-project-name
git init
gh repo create --public your-project-name
git push
```

## Open in VS Code
