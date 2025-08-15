Building CSC PyTorch container with fakeroot
[Original code here.](https://github.com/mvsjober/build-pytorch-with-fakeroot)

Build in interactive job:

```console
$ sinteractive --account project_2001659 --cores 8 --mem 32G --tmp 100 --time 8:00:00
$ make PREFIX=$TMPDIR
```
