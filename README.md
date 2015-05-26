# acadnme
Acadnme is the basic Cppia host for Nme applications


Rebuilding
----------
First, you need to rebuild the 'exports' directory.
This is done with
```
cd engine
nme nocompile
```

Then, you build each of the apps into a ".nme" file
```
cd apps/boot
nme cppia installer
cd apps/Flappybalt
nme cppia installer
cd apps/HerokuShaders
nme cppia installer
cd apps/PiratePig
nme cppia installer
cd apps/Tilemap
nme cppia installer
```

Finally, compile the engine into a runtime:
```
cd engine
nme cpp (for your host target)
or
nme android
or
nme ios update
```

Having built the host, you can test the included apps (or indeed any project) with
```
cd app/MyApp
nme cppia
```
