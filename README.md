# Docker image with Apache 2.4 and PHP 5.6
Tiny but full-featured Docker image for local PHP development. I built this because I was unsatisfied with all other Apache Docker images, especially those with PHP included. Also, by using Alpine Linux as a base, the resulting image is about 32 MB in size, which is dramatically smaller than most.

## Build
```
docker build --tag herrbischoff/apache-php git://github.com/herrbischoff/docker-apache-php.git
```

## Run
```
docker run -p <LOCAL PORT>:80 -v <LOCAL HTML FOLDER>:/var/www/localhost/htdocs herrbischoff/apache-php
```

## License
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
