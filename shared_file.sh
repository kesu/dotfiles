$ cat /tmp/awktest.19296
have something CT01234567,sadfjklk CT00987654 asfddasfafsfcat
sadlfkj CT0123
asdfasdf CT1234234
CT01234567
sadlkfjsdlkj

$

$ cat /tmp/awktest.19296 | grep -Eo "CT0[0-9]{7}"
CT01234567
CT00987654
CT01234567
$


#For crappy grep and awk versions.

$ sed 's/CT0[0-9][0-9][0-9][0-9][0-9][0-9][0-9]/\nCTNHERE &\n/g' /tmp/awktest.19296 | grep CTNHERE | awk '{print $2}'
CT01234567
CT00987654
CT01234567
$
