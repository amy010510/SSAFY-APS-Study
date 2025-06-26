# stack으로 풀자
def solution(s):
    stack=[]
    for brace in s:  # s 순회

        if brace == '(' :  # 여는 괄호일 때
            stack.append(brace)  # 스택 삽입

        elif brace ==')':  # 닫는 괄호일 때
            if stack:
                stack.pop()  # 스택이 비어있지 않으면
            else:
                return False  # 비어있는데, )이다? 그럼 false

        else:  # 닫힌 괄호가 먼저 나오면 바로 false
            return False
    if stack:  # 순회 종료했는데도 비어있지 않다?
        return False
    return True