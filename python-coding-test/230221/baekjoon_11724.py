import sys 
# 재귀호출 파이썬 제한 1000번(기본)까지 가능
sys.setrecursionlimit(10 ** 6)
input = sys.stdin.readline 

n, m = map(int, input().split())
A = [[] for _ in range(n+1)]
visited = [False] * (n+1)

def DFS(v):
    visited[v] = True 
    for i in A[v]:
        if not visited[i]:
            DFS(i) 

for _ in range(m):
    s, e = map(int, input().split())
    A[s].append(e)
    A[e].append(s)

count = 0 

for i in range(1, n+1):
    if not visited[i]:
        count += 1 
        DFS(i)

print(count)