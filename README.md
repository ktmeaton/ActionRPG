# ActionRPG

[Tutorial Playlist](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&list=PL9FzW-m48fn2SlrW0KoLT4n5egNdX-W9a&ab_channel=HeartBeast)
## Table of Contents

- [Episode 00](https://github.com/ktmeaton/ActionRPG/blob/master/README.md) - [Checkout](https://github.com/ktmeaton/ActionRPG/tree/a58299c51609ade4d5491ea1708bce5cb898b776)
- [Episode 01](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_01.md) - [Checkout](https://github.com/ktmeaton/ActionRPG/tree/446b48310e054ee1c254971f32ef92ac929ec9a8) - [Video](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&ab_channel=HeartBeast)
- [Episode 02](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_02.md) - [Checkout]() - [Video](https://www.youtube.com/watch?v=EQA9MJ5_TxU)

## Build

### Windows

- Warning: 0.4 GB Download.
- Project -> Export -> Add... -> Windows Desktop
- Manage Export Templates -> Download -> Official 3.2.3 [HTTPS]
- Export Path: ```builds/win/ActionRPG.exe```

### HTML5

- Project -> Export -> Add... -> HTML5
- Export Path: ```builds/html5/index.html```
- Install XAMPP to run locally.


### Manually Deploy 

```bash
cp -r builds/html5/ .. ;

git checkout --orphan html5
git rm -rf *
rm .gitignore

cp ../html5/* .

```

## Actions

```
mkdir .github/ ; 
mkdir .github/workflows/ ;
cd .github/workflows/ ;
wget https://raw.githubusercontent.com/aBARICHELLO/godot-ci/master/.github/workflows/godot-ci.yml

```

## Credits

- ActionRPG Resources (Attribution and License)
- Godot CI (Attribution and License)