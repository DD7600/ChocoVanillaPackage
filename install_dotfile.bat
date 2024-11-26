@echo off
:: script to install dotfile config in to the current environment

:: install vim plug
./install-VimPlug.ps1

:: Copy gitconfig file
IF EXIST %userprofile%\.gitconfig (
    copy %userprofile%\.gitconfig %userprofile%\.gitconfig.save
    copy .\dotfiles\.gitconfig %userprofile%\
) ELSE (
    copy .\dotfiles\.gitconfig %userprofile%\
)

:: Copy gitignore-global file
IF EXIST %userprofile%\.gitignore-global (
    copy %userprofile%\.gitignore-global %userprofile%\.gitignore-global.save
    copy .\dotfiles\.gitignore-global %userprofile%\
) ELSE (
    copy .\dotfiles\.gitignore-global %userprofile%\
)

:: Copy vim config files
IF EXIST %userprofile%\_gvimrc (
    copy %userprofile%\_gvimrc %userprofile%\_gvimrc.save
    copy .\dotfiles\_gvimrc %userprofile%\
) ELSE (
    copy .\dotfiles\_gvimrc %userprofile%\
)

IF EXIST %userprofile%\_vimrc (
    copy %userprofile%\_vimrc %userprofile%\_vimrc.save
    copy .\dotfiles\_vimrc %userprofile%\
) ELSE (
    copy .\dotfiles\_vimrc %userprofile%\
)

:: Copy vimfiles
xcopy /e /k /h /i ".\dotfiles\vimfiles\*" "%userprofile%\"
