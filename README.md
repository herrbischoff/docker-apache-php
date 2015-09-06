# Docker image with Apache 2.4 and PHP 5.6 (optionally MySQL 5.5)
Tiny but full-featured Docker image for local PHP development. I built this because I was unsatisfied with all other Apache Docker images, especially those with PHP included. Either they are setup very opinionated, need you to configure so much that you could simply create an own one from scratch or have file permission problems when running on a non-Linux system. Also, by using Alpine Linux as a base, the resulting image is about 32 MB in size, which is dramatically smaller than most.

* Apache starts in foreground
* Many modules (including rewriting) enabled
* `AllowOverwrite All` for changes through `.htaccess`
* Disabled PHP `X-Powered-By` header
* Enabled `index.php`
* Writes all Apache log output to `stdout` (as it should be for a Docker container)
* Correct file permissions when using AUFS (Mac OS X)
* HTML5 Boilerplate best practice settings (disabled caching by default, uncomment for production usage)

Feel free to send pull requests to improve on it, change it, fork it, basically do whatever you want with it.

## Build
```
docker build --tag herrbischoff/apache-php git://github.com/herrbischoff/docker-apache-php.git
```

## Run
```
docker run -p <LOCAL PORT>:80 -v <LOCAL HTML FOLDER>:/var/www/localhost/htdocs herrbischoff/apache-php
```

## docker-compose
In case you need a full LAMP stack (very probable) at your disposal, you can simply run `docker-compose up` and get a fully connected and setup MySQL database to work with. User name and password are `root`, the DB host is `db`. You can change all this in the `docker-compose.yml` file.

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
