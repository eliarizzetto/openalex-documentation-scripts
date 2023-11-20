import gzip
import os
from tqdm import tqdm

def decompress_files(in_dir, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    for filename in tqdm(os.listdir(in_dir)):
        if filename.endswith(".gz"):
            print(filename)
            with gzip.open(os.path.join(in_dir, filename), 'rt', newline='', encoding='utf-8') as f_in:
                with open(os.path.join(out_dir, filename[:-3]), 'w', encoding='utf-8', newline='') as f_out:
                    # f_out.writelines(f_in)
                    for line in f_in:
                        f_out.write(line)



if __name__ == "__main__":
    decompress_files('E:/multi_mapped_full_metadata/mm-full-records-csv-files', 'E:/multi_mapped_full_metadata/mm-full-records-csv-files-decompressed')
