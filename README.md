# Python_Flask_House_Rent
Python基于Flask框架前后端分离实现房屋租赁民宿预订平台毕业源码案例设计

## 技术环境: PyCharm + Flask + Python2.7或Python3.6 + Redis + mysql

技术简介：采用Python环境和Flask框架实现的一个爱家租房平台，整个项目的是基于前后端分离的开发模式。
1 前台全部采用静态html实现界面，通过ajax异步调用后端python提供的api接口查询数据库信息，通过json返回给前端展示。
2 此项目选用Flask框架，更加的灵活，比Django更高大上。
3 通过flask-session将session数据保存到redis数据库大大提高网站的执行效率，也解决了多主机数据共享问题。
4 基于蓝图划分管理不同的模块，层次更清晰，文件更容易管理维护。
5 采用flask-sqlalchemy扩展包连接查询mysql数据库，使用flask-migrate迁移维护数据库。
6 数据库操作基于事物提交，如果发生错误可以回滚并记录到日志文件。
7 数据库表设计采用了用空间换时间的思想，大大节省了服务器cpu查询数据库的压力。
8 合理的设置索引，可以大大的提高查询的执行效率，不过维护索引会降低增删改的时间成本。
9 项目本身是通过celery异步调用的云通讯实现的手机短信验证码发送，我把短信验证码直接写死123456，方便了大家测试。
10 然后图片上传调用的是第三方七牛云存储服务，让我们的应用服务器更专注做业务逻辑。
11 房东接单后用户支付的时候调用的是支付宝在线支付接口，实现了真正的支付对接。

## 功能简介：
   用户在前台通过手机号注册登录，登录后可以按照入住开始结束日期，所在区域查询房源信息，其中查询的时候首先会查询订单中的时间和用户搜索的时间是否冲突，如果存在有冲突的房源需要排除在外，业务逻辑写得很细致。查询的结果采用的分页下载，下拉到浏览器底部会自动显示下一页，查询的结果可以按照最新上线，入住最多，价格升序或降序进行排序展示。用户查询到自己满意的房源后可以下单，用户下单后房东登录可以选择接单或者拒单，如果拒单需要填写拒单原因，然后进入客户支付流程，调用支付宝接口即可完成付款，用户付款后入住结束可以发布房源评价，其他的用户就可以查看到评价了！用户登录后提交姓名身份证号码即可模拟完成实名认证，实名认证后才可以发布房源信息，发布房源可以发布房源的基本信息和房源的图片信息，默认将第一张图片作为房源的主图展示！