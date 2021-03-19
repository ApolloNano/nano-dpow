from cx_Freeze import setup, Executable
import os

additional_packages = []
additional_mods = []

PROJECT_DIR = os.path.abspath(os.path.dirname(__file__))  # directory where this file is in
DIST_DIR = os.path.join(PROJECT_DIR, 'release\\bin')  # directory where all the final builds will be found
BUILD_DIR = os.path.join(PROJECT_DIR, 'build')  # directory where all work will be done

setup(
    name = "dpow_client" ,
    version = "0.1" ,
    description = " " ,
    executables = [Executable("dpow_client.py", targetName="dpow_client.exe")],
    options = {'build_exe': {'packages':additional_packages, 'includes': additional_mods, 'build_exe': DIST_DIR}}
)