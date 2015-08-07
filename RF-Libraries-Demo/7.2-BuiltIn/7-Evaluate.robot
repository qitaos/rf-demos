*** Settings ***

*** Test Cases ***
随机数
    ${num}    Evaluate    random.randint(0,10000)    random

随机字符串
    ${str}    Evaluate    string.ascii_uppercase    string
    ${strlen}    Evaluate    len('${str}')
    ${len}    Get Length    ${str}
    ${num}    Set Variable    4
    ${newstr}    Set Variable    ${EMPTY}
    : FOR    ${index}    IN RANGE    ${num}
    \    ${i}    Evaluate    random.randint(0,int(${len})-1)+1    random
    \    ${temp}    Set Variable    ${str[int(${i})-1]}
    \    ${newstr}    Set Variable    ${newstr}${temp}
    Log    ${newstr}

字符串处理
    ${str}    Set Variable    \ \ hello world \ \
    Log    =${str}=
    ${str}    Evaluate    '${str}'.strip()
    Log    =${str}=
    ${str}    Evaluate    '${str}'.replace('o','h')
    ${str}    Evaluate    '${str}'.replace(' ','')
    ${urlA}    Set Variable    http://www.baidu.com
    ${urlB}    Set Variable    more
    ${url}    Evaluate    string.join(['${urlA}','${urlB}'],'/')    string

中文处理
    ${utf8}    Set Variable    u'\\u4e2d\\u6587'
    ${utf8cn2}    Evaluate    ${utf8}
    ${gbk}    Set Variable    \\xd6\\xd0\\xce\\xc4
    ${gbkcn2}    Evaluate    '${gbk}'.decode('gbk')
    ${a}    Set Variable    中文
    ${utf8}    Evaluate    '${a}'.decode('utf-8')
    ${utf8cn}    Evaluate    u'${utf8}'
    ${utflist}    Create List    ${a}
    ${gbk}    Evaluate    '${a}'.decode('utf-8').encode('gbk')
    ${gbkcn}    Evaluate    '${gbk}'.decode('gbk')

正则表达式
    ${rm}    Set Variable    paic-2.523.6-90
    ${subn}    Evaluate    re.subn('[^\\w]','_','${rm}')    re
    Log    ${subn[0]}
    ${sub}    Evaluate    re.sub('[\\d]','*','${rm}')    re
    ${findnumber}    Evaluate    re.findall('\\d','${rm}')    re
    ${findnumbers}    Evaluate    re.findall('\\d+','${rm}')    re

日期处理
    ${ymd}    Get Time    year month day    NOW-1day
    ${gettime}    Get Time    year month day    2014-10-15
    ${year}    ${month}    ${day}    Set Variable    ${gettime}
    ${addDays}    Set Variable    -1
    ${newDate}    Evaluate    datetime.date(int('${year}'),int('${month}'),int('${day}'))+datetime.timedelta(days=int('${addDays}'))    datetime
    ${newYMD}    Evaluate    '${newDate}'.split('-')
    ${newTime}    Evaluate    time.strftime("%Y-%m-%d-%H-%M-%S")    time

执行命令
    ${sys}    Evaluate    sys.platform    sys
    Pass Execution If    '${sys}' <> 'darwin'    非Mac系统请自己修改命令
    ${cmd}    Evaluate    os.system(r'mkdir qttest')    os
    ${cmd}    Evaluate    os.system(r'ls')    os
    ${cmd}    Evaluate    os.system(r'rm -rf qttest')    os
    ${cmd}    Evaluate    os.system(r'test')    os
