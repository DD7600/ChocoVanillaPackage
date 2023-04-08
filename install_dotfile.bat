@echo off
:: script to install dotfile config in to the current environemment

::copy gitconfig file
IF EXIST %userprofile%\.gitconfig (
    copy %userprofile%\.gitconfig %userprofile%\.gitconfig.save
    copy .\dotfile\.gitconfig %userprofile%\
)  ELSE (
     copy .\dotfiles\.gitconfig %userprofile%\
)
::copy gitignore
IF EXIST %userprofile%\.gitignore-global(
    copy %userprofile%\.gitignore-global %userprofile%\.gitignore-global.save
    copy .\dotfile\.gitignore-global %userprofile%\
)  ELSE (
     copy .\dotfiles\.gitignore-global %userprofile%\
)
:: vim config files
IF EXIST %userprofile%\_gvimrc (
    copy %userprofile%\_gvimrc %userprofile%\_gvimrc.save
    copy .\dotfile\_gvimrc %userprofile%\
)  ELSE (
     copy .\dotfiles\_gvimrc %userprofile%\
)

IF EXIST %userprofile%\_vimrc (
    copy %userprofile%\_vimrc %userprofile%\_vimrc.save
    copy .\dotfile\_vimrc %userprofile%\
)  ELSE (
     copy .\dotfiles\_vimrc %userprofile%\
)

::vimfiles
xcopy /e /k /h /i .\vimfiles\* %userprofile%\