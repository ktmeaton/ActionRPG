# ActionRPG

![Godot Export](https://github.com/ktmeaton/ActionRPG/workflows/Godot%20Export/badge.svg)

A repo following the Godot tutorial by [heartgamedev](https://www.heartgamedev.com/).

[Tutorial Playlist](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&list=PL9FzW-m48fn2SlrW0KoLT4n5egNdX-W9a&ab_channel=HeartBeast)

## Table of Contents

- [x] [Episode 00](https://github.com/ktmeaton/ActionRPG/blob/master/README.md) - [Checkout](https://github.com/ktmeaton/ActionRPG/tree/a58299c5160)
- [x] [Episode 01](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_1.md) - [v0.1.0](https://github.com/ktmeaton/ActionRPG/tree/v0.1.0) - [Video](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&ab_channel=HeartBeast)
- [x] [Episode 02](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_2.md) - [v0.2.0](https://github.com/ktmeaton/ActionRPG/tree/v0.2.0) - [Video](https://www.youtube.com/watch?v=EQA9MJ5_TxU)
- [x] [Episode 03](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_3.md) - [v0.3.0](https://github.com/ktmeaton/ActionRPG/tree/v0.3.0) - [Video](https://www.youtube.com/watch?v=TQKXU7iSWUU)
- [x] [Episode 04](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_4.md) - [v0.4.0](https://github.com/ktmeaton/ActionRPG/tree/v0.4.0) - [Video](https://www.youtube.com/watch?v=UfKMgHbaGow)
- [ ] [Episode 05](https://github.com/ktmeaton/ActionRPG/blob/master/docs/Episode_5.md) - [v0.5.0](https://github.com/ktmeaton/ActionRPG/tree/v0.5.0) - [Video](https://www.youtube.com/watch?v=wX145eoLFSM)

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


#### Manually Deploy 

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