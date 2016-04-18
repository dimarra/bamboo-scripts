iimport re,sys

for line in sys.stdin:
    try:
        re.compile(line)
        is_valid = True
#        print line.rstrip('\n') + " passed"
    except re.error:
        is_valid = False
        print line.rstrip('\n') + " failed"


