# myPROFILE

---

## 創建 $PROFILE 檔案

PowerShell 中輸入

```
if (!(Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force
}
```

---

## 開啟 $PROFILE 檔案

PowerShell 中輸入

```
notepad $PROFILE
```

---

## 查看已安裝模塊

PowerShell 中輸入

```
Get-InstalledModule
```

---

## Tab 提示可用檔案

$PROFILE 中加入

```
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
```

---

## 補全歷史紀錄

#### 行內埔全

$PROFILE 中加入

```
Set-PSReadLineOption -PredictionSource History
```

#### 列表埔全

$PROFILE 中加入

```
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView
```

---

## [PoShFuck](https://github.com/mattparkes/PoShFuck)

#### 安裝

PowerShell 中輸入

```
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))
```

$PROFILE 中加入

```
Import-Module PoShFuck
```

---

## [ZLocation](https://github.com/vors/ZLocation)

#### 安裝

PowerShell 中輸入

```
Install-Module ZLocation -Scope CurrentUser
```

$PROFILE 中加入

```
Import-Module ZLocation
```

---

## [Oh My Posh](https://ohmyposh.dev)

#### 安裝

PowerShell 中輸入

```
winget install JanDeDobbeleer.OhMyPosh -s winget
```

#### 安裝字體

PowerShell 中輸入(建議使用 MesloLGM Nerd Font)

```
oh-my-posh font install
```

#### 在終端套用字體

叫出 PowerShell 設定檔 (Windows Terminal 預設快捷鍵:"CTRL + SHIFT + ,") 並添加

```
{
    "profiles":
    {
        "defaults":
        {
            "font":
            {
                "face": "MesloLGM Nerd Font"
            }
        }
    }
}
```

#### 在 VSCode 套用字體

setting.json 中添加

```
"terminal.integrated.fontFamily": "MesloLGM Nerd Font"
```

#### 查看所有主題

PowerShell 中輸入

```
Get-PoshThemes
```

#### 套用主題

到 https://ohmyposh.dev/docs/themes 下載主題

$PROFILE 中加入

```
oh-my-posh init pwsh --config {檔案路徑} | Invoke-Expression
```

---

## [posh-git](https://github.com/dahlbyk/posh-git)

#### 安裝

PowerShell 中輸入

```
Install-Module posh-git
```

$PROFILE 中加入

```
Import-Module posh-git
```

---
