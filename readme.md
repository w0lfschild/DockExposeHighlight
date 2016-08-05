This is a [Parasite](https://github.com/ParasiteTeam) Extension that changes the color of selected window border in Expose.

##Install

1. [Disable SIP](http://osxdaily.com/2015/10/05/disable-rootless-system-integrity-protection-mac-os-x/) and [Install Parasite](https://github.com/ParasiteTeam/installer). Please read [here](https://support.apple.com/en-us/HT204899), [here](http://osxdaily.com/2015/10/05/disable-rootless-system-integrity-protection-mac-os-x/) and [here](https://github.com/ParasiteTeam/documentation) first and only proceed if you're comfortable disabling it.
2. Get the code and compile:
```
git clone https://github.com/husile/DockExposeHighlight
cd DockExposeHighlight && xcodebuild
```
3. Copy the compiled bundle into /Library/Parasite/Extensions
```
sudo cp -rvf build/Release/DockExposeHighlight.bundle /Library/Parasite/Extensions
```

4. Restart Dock:
```
killall Dock
```

##License
Do whatever you want. Please use it at your own risk.

##Note
It is only tested on 10.11.6, and should only work on El Capitan.
