# gcl-language-server-devcontainer

這個 repo 以 microsoft 的 ubuntu devcontainer image 為基礎

build 一個和 gcl 間接相關的 image

"間接" 是因為 gcl 的 snapshot 指定了 ghc 版本

因此需要 llvm 12

因此需要較舊的 Ubuntu LTS

這個 repo 安裝了 stack (和 gcl 內容版本幾乎無關)

但沒有安裝 ghc 以及 build dependencies (和 gcl 內容有關)

