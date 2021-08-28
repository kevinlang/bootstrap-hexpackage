# Bootstrap

A Hex package for including Bootstrap Scss and JS files into your Mix project.

## Phoenix Installation

The package can be installed by adding `bootstrap` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bootstrap, "~> 5.1.0"}
  ]
end
```

After that, you will need to configure your asset pipeline to use the installed resources.

### Add Bootstrap to your JS bundle

If you are using [esbuild](https://github.com/phoenixframework/esbuild), which is the
default in Phoenix 1.6+, you can easily add Bootstrap JS to your root `app.js` file like so:

```
import "bootstrap"
```

Because the default esbuild configuration sets the `NODE_ROOT` to your `deps/` folder, 
it is able to resolve this import to this package automatically, if it is installed.

### Install and Configure DartSass

The Javascript is not much use without the styles, though! 

Once you have set up [DartSass](https://github.com/cargosense/dart_sass) according to their installation instructions,
you will need to add `../deps/bootstrap` as a load path. For example: 

```
config :dart_sass,
  version: "1.36.0",
  default: [
    args: ~w(--load-path=../deps/bootstrap css/app.scss ../priv/static/assets/app.css),
    cd: Path.expand("../assets", __DIR__)
  ]
```

Then you will want to import the styles in your main `app.scss` file:

```
@import "bootstrap";
```
