# myPROFILE

## 創建 $PROFILE 檔案

### 使用工作管理員打開 PowerShell 後輸入

```
if (!(Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force
}
```

## 開啟 $PROFILE 檔案

### 在 PowerShell 中輸入

```
notepad $PROFILE
```

---

## PoShFuck (https://github.com/mattparkes/PoShFuck)

### 安裝, 在 PowerShell 中輸入

```
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))
```

### 在 $PROFILE 中加入

```
Import-Module PoShFuck
```

---

## ZLocation (https://github.com/vors/ZLocation)

### 安裝, 在 PowerShell 中輸入

```
Install-Module ZLocation -Scope CurrentUser
```

### 在 $PROFILE 中加入

```
Import-Module ZLocation
```

---

## Tab 提示可用檔案

### 在 $PROFILE 中加入

```
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
```
