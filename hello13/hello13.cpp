#include <windows.h>
#include <stdio.h>

typedef struct tagNODE
{
    struct tagNODE *pNext;
    INT value;
} NODE, *PNODE;

PNODE g_pHead = NULL;

void printAllNodes(PNODE pHead)
{
    PNODE pNode;
    INT index = 0;
    printf("---\n");
    for (pNode = pHead; pNode; pNode = pNode->pNext)
    {
        printf("%p(%d): pNode %p, value %d, pNext %p\n", pHead, index, pNode, pNode->value, pNode->pNext);
        ++index;
    }
}

BOOL addNode(INT value)
{
    PNODE pNode = new NODE;
    pNode->value = value;
    pNode->pNext = g_pHead;
    g_pHead = pNode;
    return TRUE;
}

PNODE findNode(PNODE pHead, INT value)
{
    PNODE pNode;
    for (pNode = pHead; pNode; pNode = pNode->pNext)
    {
        if (pNode->value == value)
            return pNode;
    }
    return NULL;
}

void deleteNode(PNODE& pHead, PNODE pTarget) // This function has a bug.
{
    PNODE pNode;

    if (!pTarget)
        return;

    for (pNode = pHead; pNode; pNode = pNode->pNext)
    {
        if (pNode->pNext == pTarget)
        {
            pNode->pNext = pTarget->pNext;
            break;
        }
    }

    delete pTarget;
}

void deleteAllNode(PNODE& pHead)
{
    PNODE pNode, pNext;
    for (pNode = pHead; pNode; pNode = pNext)
    {
        pNext = pNode->pNext;
        delete pNode;
    }
    pHead = NULL;
}

int main(void)
{
    printAllNodes(g_pHead);
    addNode(123);
    printAllNodes(g_pHead);
    addNode(456);
    printAllNodes(g_pHead);
    deleteNode(g_pHead, findNode(g_pHead, 456)); // buggy
    printAllNodes(g_pHead);
    addNode(789);
    printAllNodes(g_pHead);
    addNode(555);
    printAllNodes(g_pHead);
    deleteAllNode(g_pHead);
    printAllNodes(g_pHead);
    return 0;
}
