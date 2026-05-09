## programs\.niri\.enable

Whether to enable Ciri, nix config for niri\.



*Type:*
boolean



*Default:*

```nix
false
```



*Example:*

```nix
true
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings



Niri config



*Type:*
submodule



*Default:*

```nix
{ }
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.config-notification-open-close\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.config-notification-open-close\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.exit-confirmation-open-close\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.horizontal-view-movement\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.horizontal-view-movement\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.overview-open-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.overview-open-close\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.overview-open-close\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.recent-windows-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.recent-windows-close\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.recent-windows-close\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.screenshot-ui-open\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.screenshot-ui-open\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.slowdown



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-close\.anim



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve\.cubic-bezier

This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-close\.anim\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-close\.anim\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-close\.custom-shader



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-movement



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-movement\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-movement\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-movement\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-movement\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-movement\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-open



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-open\.anim



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-open\.anim\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-open\.anim\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-open\.custom-shader



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-resize



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.window-resize\.anim\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.window-resize\.anim\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.window-resize\.custom-shader



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.workspace-switch



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind



This option has no description\.



*Type:*
attribute-tagged union with choices: easing, spring

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve



This option has no description\.



*Type:*
attribute-tagged union with choices: cubic-bezier, ease-out-cubic, ease-out-expo, ease-out-quad, linear



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve\.cubic-bezier



This option has no description\.



*Type:*
list of (floating point number or floating point number or floating point number or floating point number)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve\.ease-out-cubic



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve\.ease-out-expo



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve\.ease-out-quad



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.curve\.linear



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.easing\.duration-ms



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.spring



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.spring\.damping-ratio



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.spring\.epsilon



This option has no description\.



*Type:*
floating point number



## programs\.niri\.settings\.animations\.workspace-switch\.kind\.spring\.stiffness



This option has no description\.



*Type:*
32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



## programs\.niri\.settings\.animations\.workspace-switch\.off



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds



This option has no description\.



*Type:*
null or (list of (submodule))

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.action



This option has no description\.



*Type:*
attribute-tagged union with choices: center-column, center-visible-columns, center-window, clear-dynamic-cast-target, close-overview, close-window, consume-or-expel-window-left, consume-or-expel-window-right, consume-window-into-column, debug-toggle-damage, debug-toggle-opaque-regions, do-screen-transition, expand-column-to-available-width, expel-window-from-column, focus-column, focus-column-first, focus-column-last, focus-column-left, focus-column-left-or-last, focus-column-or-monitor-left, focus-column-or-monitor-right, focus-column-right, focus-column-right-or-first, focus-floating, focus-monitor, focus-monitor-down, focus-monitor-left, focus-monitor-next, focus-monitor-previous, focus-monitor-right, focus-monitor-up, focus-tiling, focus-window-bottom, focus-window-down, focus-window-down-or-column-left, focus-window-down-or-column-right, focus-window-down-or-top, focus-window-in-column, focus-window-or-monitor-down, focus-window-or-monitor-up, focus-window-or-workspace-down, focus-window-or-workspace-up, focus-window-previous, focus-window-top, focus-window-up, focus-window-up-or-bottom, focus-window-up-or-column-left, focus-window-up-or-column-right, focus-workspace, focus-workspace-down, focus-workspace-previous, focus-workspace-up, fullscreen-window, maximize-column, maximize-window-to-edges, move-column-left, move-column-left-or-to-monitor-left, move-column-right, move-column-right-or-to-monitor-right, move-column-to-first, move-column-to-index, move-column-to-last, move-column-to-monitor, move-column-to-monitor-down, move-column-to-monitor-left, move-column-to-monitor-next, move-column-to-monitor-previous, move-column-to-monitor-right, move-column-to-monitor-up, move-column-to-workspace, move-column-to-workspace-down, move-column-to-workspace-up, move-window-down, move-window-down-or-to-workspace-down, move-window-to-floating, move-window-to-monitor, move-window-to-monitor-down, move-window-to-monitor-left, move-window-to-monitor-next, move-window-to-monitor-previous, move-window-to-monitor-right, move-window-to-monitor-up, move-window-to-tiling, move-window-to-workspace, move-window-to-workspace-down, move-window-to-workspace-up, move-window-up, move-window-up-or-to-workspace-up, move-workspace-down, move-workspace-to-index, move-workspace-to-monitor, move-workspace-to-monitor-down, move-workspace-to-monitor-left, move-workspace-to-monitor-next, move-workspace-to-monitor-previous, move-workspace-to-monitor-right, move-workspace-to-monitor-up, move-workspace-up, open-overview, power-off-monitors, power-on-monitors, quit, reset-window-height, screenshot, screenshot-screen, screenshot-window, set-column-display, set-column-width, set-dynamic-cast-monitor, set-dynamic-cast-window, set-window-height, set-window-width, set-workspace-name, show-hotkey-overlay, spawn, spawn-sh, suspend, swap-window-left, swap-window-right, switch-focus-between-floating-and-tiling, switch-layout, switch-preset-column-width, switch-preset-column-width-back, switch-preset-window-height, switch-preset-window-height-back, switch-preset-window-width, switch-preset-window-width-back, toggle-column-tabbed-display, toggle-debug-tint, toggle-keyboard-shortcuts-inhibit, toggle-overview, toggle-window-floating, toggle-window-rule-opacity, toggle-windowed-fullscreen, unset-workspace-name

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.action\.center-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.center-visible-columns



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.center-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.clear-dynamic-cast-target



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.close-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.close-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.consume-or-expel-window-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.consume-or-expel-window-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.consume-window-into-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.debug-toggle-damage



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.debug-toggle-opaque-regions



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.do-screen-transition



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.do-screen-transition\.delay-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.expand-column-to-available-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.expel-window-from-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-left-or-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-or-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-or-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-right

This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-column-right-or-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-bottom



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-down-or-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-down-or-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-down-or-top



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-in-column



This option has no description\.



*Type:*
8 bit unsigned integer; between 0 and 255 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-or-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-or-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-or-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-or-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-top



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-up-or-bottom



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-up-or-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-window-up-or-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-workspace



This option has no description\.



*Type:*
string or (unsigned integer, meaning >=0)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-workspace-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.focus-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.fullscreen-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.maximize-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.maximize-window-to-edges



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-left-or-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-right-or-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-index



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace\.args



This option has no description\.



*Type:*
list of (string or (unsigned integer, meaning >=0))



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace-down



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace-down\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace-up



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-column-to-workspace-up\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-window-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-down-or-to-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace\.args



This option has no description\.



*Type:*
list of (string or (unsigned integer, meaning >=0))



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace-down



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace-down\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace-up



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-to-workspace-up\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.move-window-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-window-up-or-to-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-index



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.move-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.open-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.power-off-monitors



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.power-on-monitors



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.quit



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.quit\.skip-confirmation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.reset-window-height



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.screenshot



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.screenshot\.args

This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-screen



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-screen\.args



This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-screen\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-screen\.write-to-disk



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-window



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-window\.args



This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-window\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.screenshot-window\.write-to-disk



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.binds\.\*\.action\.set-column-display



This option has no description\.



*Type:*
one of “normal”, “tabbed”

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-column-width



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-dynamic-cast-monitor



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-dynamic-cast-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-window-height



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-window-width



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.set-workspace-name



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.show-hotkey-overlay



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.spawn



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.spawn-sh



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.suspend



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.swap-window-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.swap-window-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-focus-between-floating-and-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-layout



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-column-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-column-width-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-window-height



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-window-height-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-window-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.switch-preset-window-width-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-column-tabbed-display



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-debug-tint



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-keyboard-shortcuts-inhibit



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-window-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-window-rule-opacity



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.toggle-windowed-fullscreen



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.action\.unset-workspace-name



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.binds\.\*\.allow-inhibiting



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.allow-when-locked



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.cooldown



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.hotkey-overlay-title



This option has no description\.



*Type:*
null or null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.key



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.binds\.\*\.repeat



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur\.noise



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur\.offset



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur\.passes



This option has no description\.



*Type:*
null or 8 bit unsigned integer; between 0 and 255 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.blur\.saturation



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.clipboard



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.clipboard\.disable-primary



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.config-notification



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.config-notification\.disable-failed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.cursor



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.cursor\.hide-after-inactive-ms



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.cursor\.hide-when-typing



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.cursor\.xcursor-size



This option has no description\.



*Type:*
null or 8 bit unsigned integer; between 0 and 255 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.cursor\.xcursor-theme



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.enable-overlay-planes



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.dbus-interfaces-in-non-session-instances



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.deactivate-unfocused-windows



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.disable-cursor-plane



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.disable-direct-scanout



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.disable-monitor-names



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.disable-resize-throttling



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.disable-transactions



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.emulate-zero-presentation-time



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.force-disable-connectors-on-resume



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.force-pipewire-invalid-modifier



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.honor-xdg-activation-with-invalid-serial



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.ignored-drm-devices



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.keep-laptop-panel-on-when-lid-is-closed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.keep-max-bpc-unchanged



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.preview-render



This option has no description\.



*Type:*
null or one of “screencast”, “screen-capture”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.render-drm-device



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.restrict-primary-scanout-to-matching-format



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.skip-cursor-only-updates-during-vrr



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.strict-new-window-focus-policy



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.debug\.wait-for-frame-completion-before-queueing



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.environment



This option has no description\.



*Type:*
null or (list of (submodule))

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.environment\.\*\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.environment\.\*\.value



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-view-scroll



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-view-scroll\.delay-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-view-scroll\.max-speed



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-view-scroll\.trigger-width



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-workspace-switch



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-workspace-switch\.delay-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-workspace-switch\.max-speed



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.dnd-edge-workspace-switch\.trigger-height



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners\.bottom-left



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners\.bottom-right



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners\.top-left



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.gestures\.hot-corners\.top-right



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.hotkey-overlay



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.hotkey-overlay\.hide-not-bound



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.hotkey-overlay\.skip-at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.disable-power-key-handling



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.focus-follows-mouse



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.focus-follows-mouse\.max-scroll-amount



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.numlock

This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.repeat-delay



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.repeat-rate



This option has no description\.



*Type:*
null or 8 bit unsigned integer; between 0 and 255 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.track-layout



This option has no description\.



*Type:*
null or one of “global”, “window”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.file



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.layout



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.model



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.options



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.rules



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.keyboard\.xkb\.variant



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mod-key



This option has no description\.



*Type:*
null or one of “ctrl”, “shift”, “alt”, “super”, “iso-level3-shift”, “iso-level5-shift”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mod-key-nested



This option has no description\.



*Type:*
null or one of “ctrl”, “shift”, “alt”, “super”, “iso-level3-shift”, “iso-level5-shift”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.accel-profile



This option has no description\.



*Type:*
null or one of “adaptive”, “flat”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.accel-speed



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.left-handed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.middle-emulation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.natural-scroll



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-button



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-button-lock



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-factor



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-factor\.base



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-factor\.horizontal



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-factor\.vertical



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.mouse\.scroll-method



This option has no description\.



*Type:*
null or one of “no-scroll”, “two-finger”, “edge”, “on-button-down”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.calibration-matrix



This option has no description\.



*Type:*
null or (list of floating point number)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.left-handed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.map-to-focused-output



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.map-to-focused-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.map-to-output



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.tablet\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touch



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touch\.calibration-matrix



This option has no description\.



*Type:*
null or (list of floating point number)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touch\.map-to-output



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touch\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.accel-profile



This option has no description\.



*Type:*
null or one of “adaptive”, “flat”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.accel-speed



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.click-method



This option has no description\.



*Type:*
null or one of “clickfinger”, “button-areas”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.disabled-on-external-mouse



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.drag



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.drag-lock



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.dwt



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.dwtp



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.left-handed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.middle-emulation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.natural-scroll



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-button



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-button-lock



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-factor



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-factor\.base



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-factor\.horizontal



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-factor\.vertical



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.scroll-method



This option has no description\.



*Type:*
null or one of “no-scroll”, “two-finger”, “edge”, “on-button-down”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.tap



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.touchpad\.tap-button-map



This option has no description\.



*Type:*
null or one of “left-right-middle”, “left-middle-right”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.accel-profile



This option has no description\.



*Type:*
null or one of “adaptive”, “flat”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.accel-speed



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.left-handed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.middle-emulation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.natural-scroll



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.scroll-button



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.scroll-button-lock



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackball\.scroll-method



This option has no description\.



*Type:*
null or one of “no-scroll”, “two-finger”, “edge”, “on-button-down”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.accel-profile



This option has no description\.



*Type:*
null or one of “adaptive”, “flat”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.accel-speed



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.left-handed



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.middle-emulation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.natural-scroll



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.scroll-button



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.scroll-button-lock



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.trackpoint\.scroll-method



This option has no description\.



*Type:*
null or one of “no-scroll”, “two-finger”, “edge”, “on-button-down”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.warp-mouse-to-focus



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.warp-mouse-to-focus\.mode



This option has no description\.



*Type:*
null or one of “center-xy”, “center-xy-always”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.input\.workspace-auto-back-and-forth



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.baba-is-float



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.background-effect



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.background-effect\.blur



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.background-effect\.noise



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.background-effect\.saturation



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.background-effect\.xray



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.block-out-from



This option has no description\.



*Type:*
null or one of “screencast”, “screen-capture”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.excludes



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.excludes\.\*\.at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.excludes\.\*\.layer



This option has no description\.



*Type:*
null or one of “background”, “bottom”, “top”, “overlay”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.excludes\.\*\.namespace



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.geometry-corner-radius



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.geometry-corner-radius\.bottom-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.geometry-corner-radius\.bottom-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.geometry-corner-radius\.top-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.geometry-corner-radius\.top-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.matches

This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.matches\.\*\.at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.matches\.\*\.layer



This option has no description\.



*Type:*
null or one of “background”, “bottom”, “top”, “overlay”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.matches\.\*\.namespace



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.opacity



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.place-within-backdrop



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.background-effect



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.background-effect\.blur



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.background-effect\.noise



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.background-effect\.saturation



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.background-effect\.xray



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.geometry-corner-radius



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.geometry-corner-radius\.bottom-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.geometry-corner-radius\.bottom-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.geometry-corner-radius\.top-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.geometry-corner-radius\.top-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.popups\.opacity



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.draw-behind-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.softness



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layer-rules\.\*\.shadow\.spread



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.always-center-single-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.background-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.border\.width



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.center-focused-column



This option has no description\.



*Type:*
null or one of “never”, “always”, “on-overflow”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.default-column-display



This option has no description\.



*Type:*
null or one of “normal”, “tabbed”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.default-column-width



This option has no description\.



*Type:*
null or attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.default-column-width\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.default-column-width\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.empty-workspace-above-first



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.focus-ring\.width



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.gaps



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.insert-hint\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.preset-column-widths



This option has no description\.



*Type:*
list of attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.preset-column-widths\.\*\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.preset-column-widths\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.preset-window-heights



This option has no description\.



*Type:*
list of attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.preset-window-heights\.\*\.fixed

This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.preset-window-heights\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.layout\.shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.draw-behind-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.softness



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.shadow\.spread



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.struts



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.struts\.bottom



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.struts\.left



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.struts\.right



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.struts\.top



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.corner-radius



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.gap



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.gaps-between-tabs



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.hide-when-single-tab



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.length



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.length\.total-proportion



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.place-within-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.position



This option has no description\.



*Type:*
null or one of “left”, “right”, “top”, “bottom”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.layout\.tab-indicator\.width



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs



This option has no description\.



*Type:*
null or (list of (submodule))

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.backdrop-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.background-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.focus-at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners\.bottom-left



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners\.bottom-right



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners\.top-left



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.hot-corners\.top-right



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.always-center-single-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.background-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.border\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.center-focused-column



This option has no description\.



*Type:*
null or one of “never”, “always”, “on-overflow”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.default-column-display



This option has no description\.



*Type:*
null or one of “normal”, “tabbed”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.default-column-width



This option has no description\.



*Type:*
null or null or attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.default-column-width\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.default-column-width\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.empty-workspace-above-first



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.active-gradient\.to

This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.focus-ring\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.gaps



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.insert-hint\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-column-widths



This option has no description\.



*Type:*
null or (list of attribute-tagged union with choices: fixed, proportion)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-column-widths\.\*\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-column-widths\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-window-heights



This option has no description\.



*Type:*
null or (list of attribute-tagged union with choices: fixed, proportion)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-window-heights\.\*\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.preset-window-heights\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.draw-behind-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.softness



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.shadow\.spread



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.struts



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.struts\.bottom



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.struts\.left



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.struts\.right



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.struts\.top



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.corner-radius



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.gap



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.gaps-between-tabs



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.hide-when-single-tab



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.length



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.length\.total-proportion



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.place-within-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.position



This option has no description\.



*Type:*
null or one of “left”, “right”, “top”, “bottom”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.layout\.tab-indicator\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.mode



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.mode\.custom



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.mode\.mode



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.clock



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.hdisplay



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.hsync-end



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.hsync-polarity



This option has no description\.



*Type:*
one of “p-h-sync”, “n-h-sync”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.hsync-start



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.htotal



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.vdisplay



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.vsync-end



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.vsync-polarity



This option has no description\.



*Type:*
one of “p-v-sync”, “n-v-sync”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.vsync-start



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.modeline\.vtotal



This option has no description\.



*Type:*
16 bit unsigned integer; between 0 and 65535 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.name



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.off

This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.position



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.position\.x



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.position\.y



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.scale



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.transform



This option has no description\.



*Type:*
null or one of “normal”, “-90”, “-180”, “-270”, “flipped”, “flipped90”, “flipped180”, “flipped270”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.variable-refresh-rate



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.outputs\.\*\.variable-refresh-rate\.on-demand



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.backdrop-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.softness



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.workspace-shadow\.spread



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.overview\.zoom



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.prefer-no-csd



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action



This option has no description\.



*Type:*
attribute-tagged union with choices: center-column, center-visible-columns, center-window, clear-dynamic-cast-target, close-overview, close-window, consume-or-expel-window-left, consume-or-expel-window-right, consume-window-into-column, debug-toggle-damage, debug-toggle-opaque-regions, do-screen-transition, expand-column-to-available-width, expel-window-from-column, focus-column, focus-column-first, focus-column-last, focus-column-left, focus-column-left-or-last, focus-column-or-monitor-left, focus-column-or-monitor-right, focus-column-right, focus-column-right-or-first, focus-floating, focus-monitor, focus-monitor-down, focus-monitor-left, focus-monitor-next, focus-monitor-previous, focus-monitor-right, focus-monitor-up, focus-tiling, focus-window-bottom, focus-window-down, focus-window-down-or-column-left, focus-window-down-or-column-right, focus-window-down-or-top, focus-window-in-column, focus-window-or-monitor-down, focus-window-or-monitor-up, focus-window-or-workspace-down, focus-window-or-workspace-up, focus-window-previous, focus-window-top, focus-window-up, focus-window-up-or-bottom, focus-window-up-or-column-left, focus-window-up-or-column-right, focus-workspace, focus-workspace-down, focus-workspace-previous, focus-workspace-up, fullscreen-window, maximize-column, maximize-window-to-edges, move-column-left, move-column-left-or-to-monitor-left, move-column-right, move-column-right-or-to-monitor-right, move-column-to-first, move-column-to-index, move-column-to-last, move-column-to-monitor, move-column-to-monitor-down, move-column-to-monitor-left, move-column-to-monitor-next, move-column-to-monitor-previous, move-column-to-monitor-right, move-column-to-monitor-up, move-column-to-workspace, move-column-to-workspace-down, move-column-to-workspace-up, move-window-down, move-window-down-or-to-workspace-down, move-window-to-floating, move-window-to-monitor, move-window-to-monitor-down, move-window-to-monitor-left, move-window-to-monitor-next, move-window-to-monitor-previous, move-window-to-monitor-right, move-window-to-monitor-up, move-window-to-tiling, move-window-to-workspace, move-window-to-workspace-down, move-window-to-workspace-up, move-window-up, move-window-up-or-to-workspace-up, move-workspace-down, move-workspace-to-index, move-workspace-to-monitor, move-workspace-to-monitor-down, move-workspace-to-monitor-left, move-workspace-to-monitor-next, move-workspace-to-monitor-previous, move-workspace-to-monitor-right, move-workspace-to-monitor-up, move-workspace-up, open-overview, power-off-monitors, power-on-monitors, quit, reset-window-height, screenshot, screenshot-screen, screenshot-window, set-column-display, set-column-width, set-dynamic-cast-monitor, set-dynamic-cast-window, set-window-height, set-window-width, set-workspace-name, show-hotkey-overlay, spawn, spawn-sh, suspend, swap-window-left, swap-window-right, switch-focus-between-floating-and-tiling, switch-layout, switch-preset-column-width, switch-preset-column-width-back, switch-preset-window-height, switch-preset-window-height-back, switch-preset-window-width, switch-preset-window-width-back, toggle-column-tabbed-display, toggle-debug-tint, toggle-keyboard-shortcuts-inhibit, toggle-overview, toggle-window-floating, toggle-window-rule-opacity, toggle-windowed-fullscreen, unset-workspace-name

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.center-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.center-visible-columns



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.center-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.clear-dynamic-cast-target



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.close-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.close-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.consume-or-expel-window-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.consume-or-expel-window-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.consume-window-into-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.debug-toggle-damage



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.debug-toggle-opaque-regions



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.do-screen-transition



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.do-screen-transition\.delay-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.expand-column-to-available-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.expel-window-from-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-left-or-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-or-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-or-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-column-right-or-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-bottom



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-down-or-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-down-or-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-down-or-top



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-in-column



This option has no description\.



*Type:*
8 bit unsigned integer; between 0 and 255 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-or-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-or-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-or-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-or-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-top



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-up-or-bottom



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-up-or-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-window-up-or-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-workspace



This option has no description\.



*Type:*
string or (unsigned integer, meaning >=0)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-workspace-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.focus-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.fullscreen-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.maximize-column



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.maximize-window-to-edges



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-left-or-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-right-or-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-first



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-index



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-last



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace\.args



This option has no description\.



*Type:*
list of (string or (unsigned integer, meaning >=0))



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace-down



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace-down\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace-up



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-column-to-workspace-up\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-down

This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-down-or-to-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace\.args



This option has no description\.



*Type:*
list of (string or (unsigned integer, meaning >=0))



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace-down



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace-down\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace-up



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-to-workspace-up\.focus



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-window-up-or-to-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-index



This option has no description\.



*Type:*
unsigned integer, meaning >=0

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-down



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-next



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-previous



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-to-monitor-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.move-workspace-up



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.open-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.power-off-monitors



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.power-on-monitors



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.quit



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.quit\.skip-confirmation



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.reset-window-height



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot\.args



This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-screen



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-screen\.args



This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-screen\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-screen\.write-to-disk



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-window



This option has no description\.



*Type:*
submodule

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-window\.args



This option has no description\.



*Type:*
list of (null or string)



*Default:*

```nix
[ ]
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-window\.show-pointer



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.screenshot-window\.write-to-disk



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-column-display



This option has no description\.



*Type:*
one of “normal”, “tabbed”

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-column-width



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-dynamic-cast-monitor



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-dynamic-cast-window



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-window-height



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-window-width



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.set-workspace-name



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.show-hotkey-overlay



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.spawn



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.spawn-sh



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.suspend



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.swap-window-left



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.swap-window-right



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-focus-between-floating-and-tiling



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-layout



This option has no description\.



*Type:*
string

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-column-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-column-width-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-window-height



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-window-height-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-window-width



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.switch-preset-window-width-back



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-column-tabbed-display



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-debug-tint



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-keyboard-shortcuts-inhibit



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-overview



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-window-floating



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-window-rule-opacity



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.toggle-windowed-fullscreen



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.action\.unset-workspace-name



This option has no description\.



*Type:*
boolean

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.allow-inhibiting



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.allow-when-locked



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.cooldown



This option has no description\.



*Type:*
null or 32 bit unsigned integer; between 0 and 4294967295 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.hotkey-overlay-title



This option has no description\.



*Type:*
null or null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.key



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.binds\.\*\.repeat



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.debounce-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.highlight



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.highlight\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.highlight\.corner-radius



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.highlight\.padding



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.highlight\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.open-delay-ms



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.previews



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.previews\.max-height



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.recent-windows\.previews\.max-scale



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.screenshot-path



This option has no description\.



*Type:*
null or null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.spawn-at-startup



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.spawn-at-startup\.\*\.command



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.spawn-sh-at-startup



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.spawn-sh-at-startup\.\*\.command



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.lid-close



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.lid-close\.spawn

This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.lid-open



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.lid-open\.spawn



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.tablet-mode-off



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.tablet-mode-off\.spawn



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.tablet-mode-on



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.switch-events\.tablet-mode-on\.spawn



This option has no description\.



*Type:*
list of string



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.baba-is-float



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.background-effect



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.background-effect\.blur



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.background-effect\.noise



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.background-effect\.saturation



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.background-effect\.xray



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.block-out-from



This option has no description\.



*Type:*
null or one of “screencast”, “screen-capture”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.border\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.clip-to-geometry



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-column-display



This option has no description\.



*Type:*
null or one of “normal”, “tabbed”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-column-width



This option has no description\.



*Type:*
null or null or attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-column-width\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-column-width\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-floating-position



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-floating-position\.relative-to



This option has no description\.



*Type:*
one of “top-left”, “top-right”, “bottom-left”, “bottom-right”, “top”, “bottom”, “left”, “right”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-floating-position\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-floating-position\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-window-height



This option has no description\.



*Type:*
null or null or attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-window-height\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.window-rules\.\*\.default-window-height\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.window-rules\.\*\.draw-border-with-background



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.app-id



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-active



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-active-in-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-floating



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-focused



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-urgent



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.is-window-cast-target



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.excludes\.\*\.title



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.focus-ring\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.geometry-corner-radius



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.geometry-corner-radius\.bottom-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.geometry-corner-radius\.bottom-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.geometry-corner-radius\.top-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.geometry-corner-radius\.top-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.app-id



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.at-startup



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-active



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-active-in-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-floating



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-focused



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-urgent

This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.is-window-cast-target



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.matches\.\*\.title



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.max-height



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.max-width



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.min-height



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.min-width



This option has no description\.



*Type:*
null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.opacity



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-floating



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-focused



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-fullscreen



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-maximized



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-maximized-to-edges



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-on-output



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.open-on-workspace



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.background-effect



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.background-effect\.blur



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.background-effect\.noise



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.background-effect\.saturation



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.background-effect\.xray



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.geometry-corner-radius



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.geometry-corner-radius\.bottom-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.geometry-corner-radius\.bottom-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.geometry-corner-radius\.top-left



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.geometry-corner-radius\.top-right



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.popups\.opacity



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.scroll-factor



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.draw-behind-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.softness



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.shadow\.spread



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tab-indicator\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.tiled-state



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.window-rules\.\*\.variable-refresh-rate



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces



This option has no description\.



*Type:*
list of (submodule)



*Default:*

```nix
[ ]
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.always-center-single-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.background-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.border\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.center-focused-column



This option has no description\.



*Type:*
null or one of “never”, “always”, “on-overflow”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.default-column-display



This option has no description\.



*Type:*
null or one of “normal”, “tabbed”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.default-column-width



This option has no description\.



*Type:*
null or null or attribute-tagged union with choices: fixed, proportion



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.default-column-width\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.default-column-width\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.empty-workspace-above-first



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient

This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.focus-ring\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.gaps



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.insert-hint\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-column-widths



This option has no description\.



*Type:*
null or (list of attribute-tagged union with choices: fixed, proportion)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-column-widths\.\*\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-column-widths\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-window-heights



This option has no description\.



*Type:*
null or (list of attribute-tagged union with choices: fixed, proportion)



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-window-heights\.\*\.fixed



This option has no description\.



*Type:*
32 bit signed integer; between -2147483648 and 2147483647 (both inclusive)

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.preset-window-heights\.\*\.proportion



This option has no description\.



*Type:*
floating point number

*Declared by:*
 - [generated/types\.nix](https://github.com/myume/ciri/blob/main/generated/types.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.draw-behind-window



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.offset



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.offset\.x



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.offset\.y



This option has no description\.



*Type:*
floating point number or signed integer

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.softness



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.shadow\.spread



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.struts



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.struts\.bottom



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.struts\.left



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.struts\.right



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.struts\.top



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.active-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.corner-radius



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.gap



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.gaps-between-tabs



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.hide-when-single-tab



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.inactive-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.length



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.length\.total-proportion



This option has no description\.



*Type:*
null or floating point number



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.on



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.place-within-column



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.position



This option has no description\.



*Type:*
null or one of “left”, “right”, “top”, “bottom”



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-color



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient\.angle



This option has no description\.



*Type:*
16 bit signed integer; between -32768 and 32767 (both inclusive)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient\.from



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient\.in_



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient\.relative-to



This option has no description\.



*Type:*
one of “window”, “workspace-view”

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.urgent-gradient\.to



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.layout\.tab-indicator\.width



This option has no description\.



*Type:*
null or floating point number or signed integer



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.name



This option has no description\.



*Type:*
string

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.workspaces\.\*\.open-on-output



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.xwayland-satellite



This option has no description\.



*Type:*
null or (submodule)

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.xwayland-satellite\.off



This option has no description\.



*Type:*
null or boolean



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)



## programs\.niri\.settings\.xwayland-satellite\.path



This option has no description\.



*Type:*
null or string



*Default:*

```nix
null
```

*Declared by:*
 - [nix/home-manager/options\.nix](https://github.com/myume/ciri/blob/main/nix/home-manager/options.nix)


