# dockerized vue js runtime configuration example

Demo of the ideas in [how to ship the same JS bundle across N environments](https://stuartsandine.com/js-bundle-across-envs)
in the context of a dockerized vue app


Build image with minified bundle served by nginx:
```
docker build -t vuejs-cookbook/dockerize-vuejs-app .
```

Set an environment variable on host, under the prefix `JS_BUNDLE_RUNTIME_CONFIG_`:

```
export JS_BUNDLE_RUNTIME_CONFIG_FOOD=pizza
```

And run it:
```
docker-compose up
```

And since we told the `docker-compose.yml` file to pass this variable through
to the container, that happens, and at container startup the config gets
injected into index.html, where we can then parse it in our JS bundle.
