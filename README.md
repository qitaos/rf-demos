# rf-demos
这里放了目前演示的一些自动化测试案例的例子，包含演示需要用到的demo。

# demo-website
这是demo网站，首先需要安装flask

1. pip安装

    如果使用pip安装会比较方便，特别是在mac电脑上，为了保证例子能正常运行，大家需要安装四个东东，flask、flask-httpauth、flask_restful、python-simplexml。感谢群友“飞一会”指出缺失的库。
只需要运行如下命令

    ```
    #mac
    sudo pip install flask
    sudo pip install flask-httpauth
    sudo pip install flask_restful
    sudo pip install python-simplexml
    #windows
    pip install flask
    pip install flask-httpauth
    pip install flask_restful
    pip install python-simplexml
    ```

2. setuptools安装

    如果你的pip不好用或者网络受限制，那么只能下载单独的源码包进行安装。
    
    下面这些都可以在https://pypi.python.org/pypi/ 上面找到，而且甚至不用搜索，直接在pypi后加上库名字即可。例如flask，他的地址在https://pypi.python.org/pypi/flask ，下载源码后解压缩，进入解压缩目录，输入命令:

    ```
    #mac
    sudo python setup.py install
    
    #windows
    python setup.py install

    ```
    
    下面列的这些都是需要下载下来安装的

    * flask
        * Werkzeug
        * Jinja2
            * MarkupSafe
        * itsdangerous
        * click
    * flask-httpauth
    * flask_restful        * aniso8601        * six		* pytz	* python-simplexml


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
     
    打开http://127.0.0.1:8000/ 或者 http://localhost:8000/ 就可以看到页面了。

5. 目录结构
- - -
    fencengDemo：web测试案例分层的demo案例。
    * 需要启动demo网站后才可运行
- - - 
    AutoItDemo：AutoItLibrary的demo案例。
    * Calculator Test Cases是AutoItLibrary官方的demo，只能值Windows下运行。我修改成中文Windows可以运行，如果是英文Windows可以直接找原版demo运行。
    * test目录是结合Selenium2Library的web测试案例（包括对话框处理和上传下载）。所有案例在windows下都可以运行，在Mac上只有2个Suite的第一个案例可以运行，其他案例在Mac上也会pass，但是会提示"Mac系统不支持该案例"。在Mac上运行之前要修改一下“打开网页”里面使用的浏览器。
    * test的案例需要启动demo网站后才可运行
- - -
    DatabaseDemo：DatabaseLibrary的demo案例。
    * oracle案例运行不了，需要你有oracle环境并且安装了cx_Oracle，同时也要修改sql脚本为你的表
    * sqlite3案例可以直接运行。
- - - 
    RequestsDemo：RequestsLibrary的demo案例，需要启动demo网站后才可运行
- - -
    rf-video：录制了2个视频，一个是AutoIt的视频，一个是Oracle数据库的视频。不过放在github上太大了，影响大家下载案例，所以我放到其他地方了，http://share.weiyun.com/0e5cee9ac473925263fe9432743826a6
- - -
    rf-book-case：是正在写的robotframework的书里的里的例子
- - -
    Selenium2Library-demo：Selenium2Library的demo案例，默认是ie打开，如果使用其他浏览器请自行修改。需要启动demo网站后才可运行。
