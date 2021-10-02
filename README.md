# tchorwat/stockfish
Docker image with Stockfish UCI engine.
Stockfish (https://stockfishchess.org/) is the most popular Open Source Universal Chess Interface (UCI) engine. With this image, you can easlly run and expose the interface over the network and connect to it as an external UCI engine.

## Quick reference
* Project source repository: (https://github.com/tchorwat/stockfish)
* In case of any bugs raise a ticket through GitHub (https://github.com/tchorwat/stockfish/issues) issues page, please.
* Supported architectures: `amd64`, `arm64`, `arm`, `ppc64le`

## Supported tags and respective Dockerfile links
* [14](https://github.com/tchorwat/stockfish/blob/master/Dockerfile.14), [latest](https://github.com/tchorwat/stockfish/blob/master/Dockerfile.14)

## Usage

### Exposing Stockfish UCI Engine service

To run Stockfish UCI Engine and expose it, run:
```
docker run -d -p 23249:23249 tchorwat/stockfish
```

Now you can test it with:
```
telnet localhost 23249
> compiler
> quit
```

You should be able to see the version of compiler used to compile stockfish.

### Explore container

If you want to inspect container you can execute:
```
docker run -it --rm tchorwat/stockfish sh
```

## License
Image contains compiled binaries of [Stockfish](https://github.com/official-stockfish/Stockfish). You can find the license by running:
```
docker run -it --rm tchorwat/stockfish cat Copying.txt source.txt
```

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

**tchorwat/stockfish** project source files are distributed with [**tchorwat/stockfish** project MIT license](https://github.com/tchorwat/stockfish/blob/master/LICENSE)
