# local-user

## What?

Creates local user accounts and bootstraps common user configs.

## Usage

For individual users, override the `defaults/main.yml` vars.

To loop over a list of users:
```yml
  - name: Creating user accounts...
    include_role: name='inhumantsar.local-user'
    vars:
      user_blockvar: '{{outer_item}}'
    with_items: '{{users}}'
    loop_control:
      loop_var: 'outer_item'
```

## Requirements

* Ansible 2.3+
