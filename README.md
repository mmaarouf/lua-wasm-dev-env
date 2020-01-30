# lua-wasm-dev-env

Docker based development environment used to run Lua on WebAssembly

## Tools needed

* bash
* docker
* docker-compose
* a [`.editorconfig`](https://editorconfig.org/) enabled editor

## Running the code

The `./bin` folder contains a few scripts to facilitate running the code.

* `./bin/start-dev-env` starts up the development environment in the background (*running this script is optional - it just speeds up subsequent compilation*).
* `./bin/stop-dev/env` stops and removes the development environment.
* `./bin/compile` compiles the project using the `Makefile`
* `./bin/run` will run the project and map it to host port `:8888`

So to simply compile and run, use: `bin/compile && bin/run`.
