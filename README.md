# docker-log.io

Read logs in realtime with [Log-Io](http://logio.org/) directly from the browser.

## Usage as a Container

### Docker Compose

```
cat >docker-compose.yml <<EOF
logio:
  image: Shelvak/docker-log.io:latest
  volumes:
   - ./volumes/logs:/logs:ro
   - ./harvester.conf:/home/logio/.log.io/harvester.conf:ro
  ports:
   - 28778:28778
EOF
docker-compose up
```

### Manualy

```bash
docker run -d --name logio -p 28778:28778 -v $PWD/volumes/logs/:/logs -v $PWD/harvester.conf:/home/logio/.log.io/harvester.conf Shelvak/log.io
```

See LogIo http://localhost:28778

## License

MIT
