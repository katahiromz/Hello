#include <windows.h>
#include <windowsx.h>
#include <commctrl.h>

#define NAME TEXT("hello10")

HINSTANCE g_hInstance = NULL;
HWND g_hMainWnd = NULL;

BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct)
{
    return TRUE;
}

void OnDestroy(HWND hwnd)
{
    PostQuitMessage(0);
}

void OnPaint(HWND hwnd)
{
    RECT rc;
    GetClientRect(hwnd, &rc);

    PAINTSTRUCT ps;
    if (HDC hdc = BeginPaint(hwnd, &ps))
    {
        HPEN hRedPen = CreatePen(PS_SOLID, 3, RGB(255, 0, 0));
        HGDIOBJ hPen1Old = SelectObject(hdc, hRedPen);
        {
            Ellipse(hdc, rc.left, rc.top, rc.right, rc.bottom);
        }
        SelectObject(hdc, hPen1Old);
        DeleteObject(hRedPen);
        HPEN hGreenPen = CreatePen(PS_SOLID, 3, RGB(0, 191, 0));
        HGDIOBJ hPen2Old = SelectObject(hdc, hGreenPen);
        {
            MoveToEx(hdc, rc.left, rc.top, NULL);
            LineTo(hdc, rc.right, rc.bottom);
            MoveToEx(hdc, rc.right, rc.top, NULL);
            LineTo(hdc, rc.left, rc.bottom);
        }
        SelectObject(hdc, hPen2Old);
        DeleteObject(hGreenPen);
        {
            UINT uFormat = DT_SINGLELINE | DT_CENTER | DT_VCENTER;
            SetBkMode(hdc, TRANSPARENT);
            SetTextColor(hdc, RGB(0, 0, 255));
            DrawText(hdc, TEXT("hello10"), -1, &rc, uFormat);
        }
        EndPaint(hwnd, &ps);
    }
}

LRESULT CALLBACK
WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (uMsg)
    {
        HANDLE_MSG(hwnd, WM_CREATE, OnCreate);
        HANDLE_MSG(hwnd, WM_PAINT, OnPaint);
        HANDLE_MSG(hwnd, WM_DESTROY, OnDestroy);
    default:
        return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }
    return 0;
}

BOOL doInitInst(HINSTANCE hInstance)
{
    InitCommonControls();

    g_hInstance = hInstance;

    WNDCLASSEX wcx = { sizeof(wcx) };
    wcx.style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS;
    wcx.lpfnWndProc = WindowProc;
    wcx.hInstance = hInstance;
    wcx.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wcx.hCursor = LoadCursor(NULL, IDC_ARROW);
    wcx.hbrBackground = (HBRUSH)(COLOR_3DDKSHADOW + 1);
    wcx.lpszClassName = NAME;
    if (!RegisterClassEx(&wcx))
    {
        MessageBoxA(NULL, "RegisterClass failed", NULL, MB_ICONERROR);
        return FALSE;
    }

    return TRUE;
}

BOOL doCreateWnd(HINSTANCE hInstance, INT nCmdShow)
{
    DWORD style = WS_OVERLAPPEDWINDOW;
    DWORD exstyle = 0;
    g_hMainWnd = CreateWindowEx(exstyle, NAME, NAME, style,
                                CW_USEDEFAULT, CW_USEDEFAULT,
                                300, 200, NULL, NULL, hInstance, NULL);
    if (g_hMainWnd == NULL)
    {
        MessageBoxA(NULL, "CreateWindow failed", NULL, MB_ICONERROR);
        return FALSE;
    }

    ShowWindow(g_hMainWnd, nCmdShow);
    UpdateWindow(g_hMainWnd);
    return TRUE;
}

INT WINAPI
WinMain(HINSTANCE   hInstance,
        HINSTANCE   hPrevInstance,
        LPSTR       lpCmdLine,
        INT         nCmdShow)
{
    if (!doInitInst(hInstance))
        return -1;

    if (!doCreateWnd(hInstance, nCmdShow))
        return -2;

    MSG msg;
    while (GetMessage(&msg, NULL, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

    return (INT)msg.wParam;
}
