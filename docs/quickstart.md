# Quickstart

## Prerequisites

In order to use Ciri, you need to have home manager and nix flakes enabled. The
following sections assume you have set these up.

## Setting up the flake input

The first thing we need to do is add ciri to your flake inputs so that we can
use the options.

In your `flake.nix` add ciri to your inputs

```nix
inputs = {
    ciri.url = "github:myume/ciri";
};
```

## Importing the options

Now that we have the input, we need to import the home manager module so that we
can use the options.

```nix
{inputs,...}: {
    imports = [ inputs.ciri.homeManagerModules.default ]; # this imports the options

    # now we can use the options
    programs.niri = {
        enable = true;
        settings = {
            # your nix configuration here
        };
    };
}
```

> [!NOTE]
> Make sure you can access your flake inputs in home manager. You may need to
> inherit the flake inputs in your home manager's `extraSpecialArgs`.

## Configuring niri

And that's it! You're ready to start configuring niri in nix.

All the options available to you can be found in the
[options search](./options.html). For more information on each option, you can
visit the
[niri wiki](https://niri-wm.github.io/niri/Configuration%3A-Introduction.html).
The name of the options should generally be identical to what it is in niri.

An example configuration can also be found
[here](https://github.com/myume/ciri/blob/main/nix/tests/example-config.nix).
