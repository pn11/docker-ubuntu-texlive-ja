# docker-ubuntu-texlive-ja

日本語でLaTeXを使えるようにした、UbuntuベースのDockerイメージです。

[korosuke613/docker-ubuntu-texlive-ja](https://github.com/korosuke613/docker-ubuntu-texlive-ja) の Ubuntu のバージョンを 18.04 から 20.04 に上げ、 Docker Hub への依存をなくしました。また、オリジナルでは TeX タイプセット用のコンテナと VSCode の Dev Container が別でしたが、一本化しました。 `docker pull` しないため Docker イメージは手元でビルドされます。

## Usage

```bash
cd sample
docker compose -f ../.devcontainer/docker-compose.yml run --rm -it --workdir /workdir/sample ubuntu-texlive-ja latexmk sample
```
