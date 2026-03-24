# Northbrook Karate

Website for Northbrook Karate, a Chito-Ryu karate dojo in Fredericton, New Brunswick.

Built with [Tailwind CSS v4](https://tailwindcss.com/) and served via Nginx in Docker.

## Development

Install dependencies:

```sh
npm install
```

Start the Tailwind watcher:

```sh
npm run dev
```

Then open `dist/index.html` in a browser.

## Build

Build the minified CSS:

```sh
npm run build
```

## Docker

Build, tag, and push the Docker image using [Task](https://taskfile.dev/):

```sh
task build-tag-push -- 1.0.0
```

This builds a multi-arch image (`amd64`/`arm64`), tags it as both the given version and `latest`, and pushes to `tsawler/northbrook-karate`.

To run locally:

```sh
docker build -t northbrook-karate .
docker run -p 8080:80 northbrook-karate
```
