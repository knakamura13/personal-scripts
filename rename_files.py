#!/Users/kjnakamura/miniforge3/bin/python3

import os
import re


def main():
    dry_run = True
    folder = '/Volumes/WD 10TB/movies-and-tv-shows/movies'

    for i, filename in enumerate(os.listdir(folder)):
        new_filename = ''
        file_ext = filename[-3:]
        f_split = filename.replace('.', ' ').split(' ')

        if f_split[0] != 'The':
            continue

        f_split.pop(0)
        new_index = -1
        
        # Find the index of a valid year such as (1998) or (2003)
        for word_num, word in enumerate(f_split):
            if '(19' in word or '(20' in word:
                new_index = word_num
                break

        # Find the index of a valid label such as [HB] or [SD]
        if not new_index or new_index == -1:
            for word_num, word in enumerate(f_split):
                if '[HB' in word or file_ext in word:
                    new_index = word_num
                    break
            
        f_split.insert(new_index, 'The')
        f_split[new_index - 1] += ','
        f_split.pop(-1)
        new_filename = ' '.join(f_split)

        src = f'{folder}/{filename}'
        dst = f'{folder}/{new_filename}.{file_ext}'

        if src != dst:
            print(dst)

            if not dry_run:
                os.rename(src, dst)

if __name__ == '__main__':
    main()
