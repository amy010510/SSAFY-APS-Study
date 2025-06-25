def solution(s):
#   공백을 기준으로 split
    s_list = list(map(int, s.split()))
    min_s = s_list[0]
    max_s = s_list[0]
    for sl in s_list:
        if min_s > sl:
            min_s = sl
        if max_s < sl:
            max_s = sl
    s_min = str(min_s)
    s_max = str(max_s)
    return s_min+ ' '+ s_max