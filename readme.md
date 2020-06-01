### ui_auto_frame��ܽ���:

### ���

**UI�Զ������Կ�ܣ�pytest+selenium+allure**

---

### ģ�����

**Baseģ���װ����Ԫ�صĹ�������**
**Check_config_scriptģ���Ż������Ľű�**
**Commonģ���Ƿ�װ�Ķ�ȡ�����ļ��Ĺ���������������util������**
**Confģ���Ǵ��ȫ�������ļ�**
**Grid_serverģ����selenium-server��hub��node������bat�ű����Լ�����selenium��������������в��������**
**Logsģ�飬����������־�ļ�**
**PageObjectģ����ȡҳ������װ������������**
**Reportģ�飬��Ų��Ա��棬�Լ����Ա��������ģ��allure**
**TestCasesģ�飬���ڴ�Ų���case**

---

### allureװ����

- @allure.severity("critical")
  - ���ȼ�������blocker, critical, normal, minor, trivial������ͬ�ĵȼ�
    - �����������ȼ�1��blocker���ж�ȱ�ݣ��ͻ��˳�������Ӧ���޷�ִ����һ��������
    - �����������ȼ�2��critical���ٽ�ȱ�ݣ� ���ܵ�ȱʧ��
    - �����������ȼ�3��normal����ͨȱ�ݣ���ֵ�������
    - �����������ȼ�4��minor����Ҫȱ�ݣ����������UI���󲻷���
    - �����������ȼ�5��trivial������΢ȱ�ݣ�����������ʾ��������ʾ���淶��'
- @allure.feature("����ģ��_demo1")
  - ���ܿ飬feature���ֿܷ�ʱ��story��,��ͬʱ����feature��storyʱ,featureΪ���ڵ�
- @allure.story("����ģ��_demo2")
  - ���ܿ飬������ͬfeature��story����������������ͬģ����,ִ��ʱ������ɸѡ
- @allure.issue("BUG�ţ�123")
  - �����ʶ��������ʶ���е����⣬��Ϊһ��url���ӵ�ַ
- @allure.testcase("�������������ַ������")
  - ������ʶ��������ʶ��������Ϊһ��url���ӵ�ַ

---

**���������Ҫ��Ϊ���㣬Base�㡢PageObject�㡢TestCase�㣬���ô�ͳ�Ļ������Ĵ�ֱ�ܹ�ģʽ��**
**Ԫ�ع�������������װ�����Base��**
**ҳ��Ԫ�ز�������ڵڶ���PageObject�㣬�������ҳ��Ԫ�ر仯��ֱ���ڵڶ�����Ӧ��Page�����޸ļ���**
**����case�����TestCases�㣬��Ҫ�����ԵȲ���**

---

**��װ����Ҫ�İ���ʹ��pycharm������Ŀ����pycharm��terminal��ֻҪ�� requirements.txt ���ڵ�Ŀ¼�£�ʹ���������� �������ڵ�ǰ�� python �����е���������Ҫ�İ���**
`pip install -r requirements.txt`

---
**����˵����**
**�������ߣ�pycharm**
**python�汾��python3.8**
**����case����ڣ�run.py**
**�������Chrome**
**webdriver��ѡ���ӦChrome�汾��driver�����ҷ���python�İ�װĿ¼��**

---

**���κ�ʹ����������ϵ�ң�chineseluo**

---

### �����

- python��װ��`version:3.7`
- java�������ã�`version 1.8`��win10ϵͳ����������java�������ο�[win10java��������](https://www.runoob.com/w3cnote/windows10-java-setup.html)
- allure��װ��
  - ��ͬƽ̨��װallure�ķ�����ͬ�����������windowsƽ̨��allure�İ�װ���衣����ƽ̨���Ķ�[allure�ٷ��ĵ�](https://docs.qameta.io/allure/)���в���
  - �ٷ��ṩ�İ�װ�������ܻ������绷��Ӱ�����װʧ�ܣ���ѡ����[GitHub�ֿ�](https://github.com/allure-framework/allure2 )�����ļ�����װallure2
  - Windows�����¿��������²�����а�װ
    - ��װscoop��ʹ��**����ԱȨ��**��powershell���ڣ���������`Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')`
    - �����װ���ɹ�������`Set-ExecutionPolicy RemoteSigned -scope CurrentUser`�����гɹ�������ִ�е�һ��
    - scoop��װ�ɹ������̨�����`Scoop was installed successfully!`
    - ִ��`scoop install allure`����allure�İ�װ
    - allure��װ�ɹ������̨�����`'allure' (2.13.1) was installed successfully!`

---

**selenium���طֲ�ʽ�������ã�**
*1������JDK����1.8��ʹ��javac ���java�����Ƿ��������*
*2������selenium-server-standalone�����ص�ַ��http://selenium-release.storage.googleapis.com/index.html����Ҫ��Ӧ�Լ����ص�selenium�汾*
*3�����ض�Ӧ���������driver�����õ�python�İ�װĿ¼(chrome��https://sites.google.com/a/chromium.org/chromedriver/downloads��firefox��https://github.com/mozilla/geckodriver/releases��ie��http://selenium-release.storage.googleapis.com/index.html?path=3.5/)*
*4������hub�ڵ㣨����ڵ㸺������ķַ��������ռ�ͳ�ƣ�java -jar selenium-server-standalone-3.5.0.jar -role hub��ps:�˿ڿ����޸ģ�*
*5������node�ڵ�java -jar selenium-server-standalone-3.5.0.jar -role node -port 5555 -hub http://localhost:4444/grid/register��ps:�˿ڿ����޸ģ���Ҫ���ö��ٸ�node�ڵ㣬ֻ��Ҫ�޸�port���ɣ�*
*6�����Դ��룺test_mul_node.py����������������򿪣�˵����������û����*



---

**���������ֲ�ʽ���Է���**

1��ִ��start_server.bat������hub��node��ʹ���������¼127.0.0.1:4444�����console����������node�Ľڵ���Ϣ����ʾ�ֲ�ʽ���������ɹ�

2��ִ��start_run_all_browser���������������ִ�нű�ģʽ��IE��Ҫ������������ã������ִ��ʧ�ܣ�

---

**docker�����ֲ�ʽ���Է���**

һ����ȡselenium��docker����

~~~ ������ȡ
docker pull selenium/hub
docker pull selenium/node-firefox
docker pull selenium/node-chrome
~~~

������龵���Ƿ���ȡ�ɹ�

~~~ ��龵��
docker images | grep selenium
~~~

��������docker����

~~~ ����docker����
docker run -p 5555:4444 -d --name hub selenium/hub
docker run -P -d --link hub:hub --name firefox selenimu/node-firefox
docker run -P -d --link hub:hub --name chrome selenimu/node-chrome
~~~

�ġ�����Ƿ������ɹ�

ʹ��docker������������IP+ӳ��Ķ˿ڽ��з��ʣ��鿴console���鿴��hub�ڵ㽨�����ӵ�node�ڵ��IP�Ͷ˿ڵ���Ϣ�Ƿ���ȷ

�塢����ģʽ����ѡ��

1��server+browser����ģʽ��ʹ�÷���˺�node������һ��ľ���

~~~ ����
docker pull selenium/standalone-chrome-debug
docker pull selenium/standalone-firefox-debug
~~~

2��server+node(browser)����ģʽ��ʹ��hub+node�ķ�ʽ������ʹ��debug������־

~~~ ����
docker pull selenium/standalone-chrome-debug
docker pull selenium/standalone-firefox-debug
~~~

~~~ ������������
docker run -d -p 5900:5900 --link hub:hub selenium/node-chrome-debug
~~~

�鿴Linux����������е�ͼ�ν���

ʹ��vnc viewer�����ص�ַ��`https://www.realvnc.com/en/connect/download/viewer/windows/`

����docker���ڻ�����������IP+ӳ��Ķ˿ڣ�5900���������ӣ�Ĭ�����룺secret

---

### ��α�д��������

������ϸ˵��������һ���������Ե�¼������ʾ

1����PageObjectģ�鴴��һ��login_page.py

![image-20200601211103002](C:\Users\chineseluo\AppData\Roaming\Typora\typora-user-images\image-20200601211103002.png)

2����װloginҳ�����Ԫ�ض���

~~~ login_page.py
# coding:utf-8
from Base.base import Base
from selenium.webdriver.common.by import By
from selenium import webdriver


# ��װ�������μ�������¼ҳ��������󼰸���Ԫ�ؼ���������
class Login_page(Base):
    def __init__(self, driver):
        super().__init__(driver)

    def login_by_config_url(self):
        """
            �������ļ�config.ini��ȡ��¼��ַ
        @return: ��¼��ַ
        """
        return super().login_by_config_url()

    def get_home_page_url(self, url):
        """
            ��¼���Ե�ַURL
        @param url: ��¼ҳ��URL
        """
        self.get_url(url)

    def get_username_attribute_value(self):
        """
            ����˺�������placeholderֵ
        @return: ����˺�������placeholderֵ
        """
        return super().get_placeholder((By.NAME, "Username"))

    def get_password_attribute_value(self):
        """
            �������������placeholderֵ
        @return:�������������placeholderֵ
        """
        return super().get_placeholder((By.NAME, "Password"))
~~~



3����TestCases�����½�һ����������Loginģ�飬���Ե�¼ҳ��

![image-20200601210858042](C:\Users\chineseluo\AppData\Roaming\Typora\typora-user-images\image-20200601210858042.png)

4����Login���洴��һ��conftest.py��test_login_page_case.py

conftest.py��ָ����Ҫ���صĲ���ҳ�����ʹ��scope����Ϊfunction

~~~ conftest.py
import pytest
from PageObject.login_page import Login_page


@pytest.fixture(scope="function")
def login_page_class_load(function_driver):
    login_page = Login_page(function_driver)
    yield login_page
~~~

test_login_page_case.py��ÿ������case��Ҫ����ҳ��ģ��conftest.py�е�function���Լ�ȫ������conftest.py��function_driver������function_remote_driver���ֲ�ʽ��Ҫʹ�øò���)������ʹ��Baseģ���е�assert_method��Assert_method�������װ�˶��Է�����������allure����ʧ�ܽ�ͼ�Ȳ��������ݲ�ͬ�Ķ��Գ���ȡ�ã������Լ��ٽ��з�װ

~~~ test_login_page_case.py
# coding:utf-8
import pytest
import allure
import inspect
import logging
from Base.assert_method import Assert_method


@allure.feature("Login_page_case")
class Test_login_page_case:

    @allure.story("Login")
    @allure.severity("normal")
    @allure.description("���Ե�¼")
    @allure.link("https://www.baidu.com", name="������ת�ٶ�")
    @allure.testcase("https://www.sina.com", name="��������λ��")
    @allure.title("ִ�в����������ڵ�¼ģ��")
    def test_DLZC1(self, login_page_class_load, function_driver):
        logging.info("������ű��룺{}".format(inspect.stack()[0][3]))
        login_page_class_load.login_by_config_url()
        username_input_attribute_value = login_page_class_load.get_username_attribute_value()
        Assert_method.assert_equal_screen_shot(function_driver, (username_input_attribute_value, "�ֻ�����"))
~~~

5��ִ������

ִ����������ͨ�����ֳ��õķ�������

1. pycharm������`test runner`Ϊ`pytest`������·��Ϊ`settings->Tools->Python Integrated Tools->Testing`��������ɺ���ܹ��ڴ򿪲��������ļ��󿴵���ִ�еİ�ť��
2. �ڸ�Ŀ¼�µ�`run.py`�ļ������У���Ҫ����Ҫ���е�`Fixture`��Ϳ��������ˡ����統���ڵ���`Login`ʱֻ��Ҫ��֤`allure_features_list`��ֻ��`Login`�����ˣ�`pytest`���Զ�Ѱ��`Fixture`ֵΪ`Login`����������

![image-20200601211933915](C:\Users\chineseluo\AppData\Roaming\Typora\typora-user-images\image-20200601211933915.png)