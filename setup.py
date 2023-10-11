from setuptools import setup, find_packages

# make sure the etl script outputs properly
setup(
    name="ETLpipeline",
    version="0.1.0",
    description="ETLpipline",
    author="Jiayi Zhou",
    author_email="jiayi.zhou@duke.edu",
    packages=find_packages(),
    install_requires=[
        "databricks-sql-connector",
        "pandas",
        "python-dotenv",
    ],
    entry_points={
        "console_scripts": [
            "etl_query=main:main",
        ],
    },
)
