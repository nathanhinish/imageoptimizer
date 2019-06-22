# imageoptimizer

It will run 
- pngquant and optipng on all png images in the `/mnt` mount (recursively).
- mozjpeg/cjpeg on all jpg (+jpeg) images in the `/mnt` mount (recursively).

## Usage

`docker run -v <path>:/mnt <container>`

## Details

- Quality target is around 70-75
- PNG is also lossy optimized
- Will overwrite the files
- Parallize the jobs on all available logical CPUs

### PNG 

```
pngquant --force --quality=70-80 --skip-if-larger --speed 1 
optipng -o7 
```

### JPEG

```
cjpeg -quality 72 -optimize 
```

