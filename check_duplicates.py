import collections
def check(s):
    parts = s.split("|")
    print(parts)
    if len((parts)) == len(set(parts)):
        return True
    return False
if __name__ == '__main__':
    test = "RVRTPP00|RVPSPP02|R009PGSP|R009P127|R009PG08|R009P237"
    print(check(test))
    if not check(test):
        parts = test.split("|")
        print([item for item, count in collections.Counter(parts).items() if count > 1])
        parts = set(parts)
        res = ""
        for part in parts:
            res += part
            res += "|"
        print(res)