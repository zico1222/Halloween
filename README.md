# Halloween
A Halloween theme for LaTeX Beamer class powered by Irasutoya and Fontna.

The theme uses some illustrations provided by [Irasutoya](http://www.irasutoya.com "Irasutoya") for items in itemize environment, and some japanese fonts by [Fontna](http://www.fontna.com/blog/1371/ "Fontna").

## Sample pages
![sample page 1](https://github.com/zico1222/Halloween/wiki/images/sample-0.png)
![sample page 2](https://github.com/zico1222/Halloween/wiki/images/sample-1.png)
![sample page 3](https://github.com/zico1222/Halloween/wiki/images/sample-2.png)

## Depends
 - ImageMagick (`convert` and `composite` commands)
 - pLaTeX/upLaTeX
 - PXchfon package (to specify fonts in the style file)
 - [ハロウィンの背景素材（オレンジ）](http://www.irasutoya.com/2014/10/blog-post_52.html)
 - [いろいろなハロウィンのカボチャのイラスト](http://www.irasutoya.com/2014/10/blog-post_96.html)

## Installation for UNIX system
Just execute `install.sh` as root user: `sudo install.sh`

The script downloads some images from Irasutoya online.
- halloween_background_orange.png as `images/halloween-background-orange.png`
- halloween_pumpkin2.png as `images/halloween-pumpkin2.png`
- halloween_pumpkin5.png as `images/halloween-pumpkin5.png`
- halloween_pumpkin3.png as `images/halloween-pumpkin3.png`

## Manual Installation
1. Download and rename the image files above.
2. Put following files in your paths in LaTeX:
   - `images/*`
   - `fonts/*.ttf`
   - `theme/*`

## Usage
Specify beamer theme as `Halloween` in your preamble:

```tex
\documentclass[dvipdfmx,14pt]{beamer}
\usetheme{Halloween}
```

Or, see `sample/sample.tex` for the details.
