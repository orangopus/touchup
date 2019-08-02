![](image.png)	

TouchUp combines PowerShell & Mix It Up API functionality all into one easily configurable automated .ps1 script that you can use with Touch Portal.	

## Pre-requisites	
- [Touch Portal](https://www.touch-portal.com/)	
- [Mix It Up](https://mixitupapp.com/)	
- PowerShell	

## **Getting Started**	

- Add a button to your grid on Touch Portal	
- Select **Run PowerShell Script** under **Run**	
- Browse for the file: `touchup.ps1`	
- In the area called **Command Line params**	
    - Enter: `-command Usage -category Usage` (See [Parameters](#Parameters) below for Usage details)	
- Test out a command by tapping on the button you assigned the script to.	

## **Parameters** 	

You need the required ones to run the script. (Or you can edit them in the script file, but do so at your own risk)	

| Parameter    | Usage        | String  | Required	
|------------------|-|-| -|	
| **-command** | `String` | [See Commands](#Commands) | true	
| **-category**| `String` |[See Categories](#Categories) | true	
| **-generate** | `Switch` |  | optional	

## Commands	

To see your command names open up commands.bat. This will autogenerate a .txt file containing your command names.	

Alternatively, you can generate a commands.txt file with the `-generate` parameter.	

`WARN` - Make sure not to name your commands on Mix It Up the same.	

## Categories	

- Interactive 	
- Chat 	
- Pre-Made	
- Event	
- Timer	
- ActionGroup	
- Game	

## Big Thanks	

Thank you to the Mix It Up and Touch Portal communities for making awesome tools.	

## Contribute to the Code	

If you would like to contribute to the code, submit a pull request. 	

## Got Stuck?	

[TouchUp Guide for Dummies](https://github.com/orangopus/touchup/wiki/TouchUp-Guide-for-Dummies)

You can read the [Mix It Up Wiki](https://github.com/SaviorXTanren/mixer-mixitup/wiki) for more information on what you can do with Mix It Up itself including Commands, Actions, Timers, MixPlay Interactive, and more.	

And here's the [Mix It Up Developer API Docs](https://saviorxtanren.github.io/mixer-mixitup) for the endpoints.	

If you need help, ping **Cheese#1337** on the official [Touch Portal Discord](discord.gg/MgxQb8r)
