import os
import mimetypes
import tempfile


def create_temp_files():
    f = tempfile.NamedTemporaryFile(delete=False)
    f.write(b"This temporary file is created by file_helper!\n")
    f.close()
    content_type, encoding = mimetypes.guess_type(f.name)
    if content_type is None:
        content_type = 'multipart/form-data'
    files = {'file': (f.name, open(f.name, 'rb'), content_type)}

    return files


def remove_temp_files(files):
    if(len(files['file']) > 1):
        os.remove(files['file'][0])
        return not os.path.exists(files['file'][0])
    return True
