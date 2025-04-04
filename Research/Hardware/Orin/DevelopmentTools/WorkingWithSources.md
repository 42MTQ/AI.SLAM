# Working With Sources

You can now sync sources that are related to Jetson Linux from the NVIDIA Git server and download the sources from the Jetson Linux page. To sync the sources from the Git server, select one of the following options:

    Use git clone to clone individual git repositories locally. Check the table below for the URL information of the repositories.

        git clone <URL of the git repo>

        For example git clone "https://nv-tegra.nvidia.com/r/3rdparty/canonical/linux-jammy".

    Use the source_sync.sh script in the Jetson Linux package to download the available sources.

        To download all kernel related sources use the -k option.

        ./source_sync.sh -k [-t <release tag>]

        To download all sources other than kernel you can use the -o option.

        ./source_sync.sh -o  [-t <release tag>]

    If you do not include the -k or -o options, the available sources for that release tag will be synced.

## Reference

https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/SD/WorkingWithSources.html

