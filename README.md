# rf-demos
这里放了目前演示的一些自动化测试案例的例子，包含演示需要用到的demo。

# demo-website
这是demo网站，首先需要安装flask

1. pip安装

    如果使用pip安装会比较方便，特别是在mac电脑上，为了保证例子能正常运行，大家需要安装两个东东，flask、flask-httpauth。
只需要运行如下命令

    ```
    sudo pip install flask
    sudo pip install flask-httpauth
    ```

2. setuptools安装
    如果你的pip不好用或者网络受限制，那么只能下载单独的源码包进行安装。        下面这些都可以在https://pypi.python.org/pypi/ 上面找到，而且甚至不用搜索，直接在pypi后加上库名字即可。例如flask，他的地址在https://pypi.python.org/pypi/flask，下载源码后解压缩，进入解压缩目录，输入命令:
    ```
    #mac
    sudo python setup.py install
    
    #windows    python setup.py install
    ```        下面列的这些都是需要下载下来安装的    * flask        * Werkzeug        * Jinja2            * MarkupSafe        * itsdangerous        * click    * flask-httpauth


3. 启动demo网站

    启动网站服务的命令是

    ```
    python flaskdemo.py
    ```

    运行成功后会看到如下提示：
    
    ```
     * Running on http://127.0.0.1:8000/ (Press CTRL+C to    quit)
     * Restarting with stat
     ```

4. 打开网站
     
    打开http://127.0.0.1:8000/或者http://localhost:8000/就可以看到页面了。

5. 目录结构
    
    fencengDemo：Selenium2Library分层的demo案例，需要在前面的网站启动后才可运行
    
    AutoItDemo：AutoItLibrary的demo案例，windows下运行。test目录是案例，demo目录是网页上传下载用的页面。
    
    DatabaseDemo：DatabaseLibrary的demo案例，oracle案例运行不了，需要有环境，sqlite3案例可以直接运行。
    
    RequestsDemo：RequestsLibrary的demo案例，需要在前面的网站启动后才可运行
    
    rf-video：录制了2个视频，一个是AutoIt的视频，一个是Oracle数据库的视频。