#include <stdlib.h>
#include <stdio.h>
#include <sys/stat.h>

int getTextFromFile(const char *filename, char **pptext)
{
    FILE *fin;
    size_t size, read_len;
    char *ptext;
    struct stat st;

    *pptext = NULL;

    if (stat(filename, &st) != 0)
        return -1;

    size = st.st_size;

    fin = fopen(filename, "rb");
    if (!fin)
        return -2;

    ptext = malloc(size + 1); // including NUL
    if (!ptext)
    {
        fclose(fin);
        return -3;
    }

    read_len = fread(ptext, 1, size, fin);
    ptext[size] = 0; // set NUL

    fclose(fin);

    if (read_len != size)
    {
        free(ptext);
        return -4;
    }

    *pptext = ptext;
    return 0; // success
}

int printFile(const char *filename)
{
    char *ptext;
    int ret;

    ret = getTextFromFile(filename, &ptext);
    switch (ret)
    {
    case 0: // success
        printf("%s\n", ptext);
        free(ptext);
        break;
    case -1:
    case -2:
        printf("ERROR: cannot open '%s'\n", filename);
        break;
    case -3:
        printf("ERROR: Out of memory\n");
        break;
    case -4:
        printf("ERROR: cannot read '%s'\n", filename);
        break;
    }

    return ret;
}

int main(int argc, char **argv)
{
    if (argc != 2)
    {
        printf("Usage: hello15 \"file.txt\"\n");
        return 0;
    }

    return printFile(argv[1]);
}
