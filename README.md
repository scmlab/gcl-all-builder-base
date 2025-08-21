# gcl-all-builder-base

這個 repo 以 microsoft 的 ubuntu devcontainer image 為基礎

build 一個和 gcl 間接相關的 image

"間接" 是因為 gcl 的 snapshot 指定了 ghc 版本

為了兼顧 CI 與 HLS 使用者的需求, 所以改用 ghcup 安裝 ghc 以及 HLS

(不能由 stack 安裝 HLS [(link)](https://github.com/haskell/haskell-language-server/pull/3314))


## 分離

這個 repo 的建構過程不會用到 gcl 相關的檔案, 只有版本相關

分離 repo 一個是清楚, 另一個是 GitHub Actions 的 cache quota 會分開計算


## devcontainer.json

這個 project 有一個 .devcontainer/devcontainer.json

這個檔案 "不是" build 的 input

只是便於在 codespaces 上測試最新 build 出的 image
