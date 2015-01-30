# df_packer-cookbook

This cookbook downloads and installs version 0.7.5 of Packer onto an Ubuntu system. This is for an updated version over the community packer cookbook which is at 0.5.5

## Supported Platforms

* Ubuntu-14.04 at the moment. 

## Attributes

Saving attributes for later versions

## Usage

### df_packer::default

Include `df_packer` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[df_packer::default]"
  ]
}
```

## License and Authors

Author:: Jeff Carapetyan (<jeff@datafundamentals.com>)
