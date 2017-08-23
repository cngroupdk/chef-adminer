# adminer-cookbook

Downloads [adminer](http://www.adminer.org/) with plugins.

## Supported Platforms

Should work everywhere, tested on ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['adminer']['dir_to_install']</tt></td>
    <td>String</td>
    <td>Where to install</td>
    <td><tt>/var/www/db</tt></td>
  </tr>
  <tr>
    <td><tt>['adminer']['version_to_install']</tt></td>
    <td>String</td>
    <td>Which version / flavor to install</td>
    <td><tt>mysql_english</tt></td>
  </tr>
  <tr>
    <td><tt>['adminer']['user']</tt></td>
    <td>String</td>
    <td>Owner of the files installed</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['adminer']['group']</tt></td>
    <td>String</td>
    <td>Group for the files installed</td>
    <td><tt>root</tt></td>
  </tr>

</table>

## Usage

### adminer::default

Include `adminer` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[adminer::default]"
  ]
}
```

Setting up a web server is not a part of this cookbook. We strongly suggest using https :).

## License and Authors

License: MIT  
Author: Mojzis Stupka (stupka@cngroup.dk)

**[CN Group CZ](http://cngroup.dk/)**
