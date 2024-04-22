display_menu(){
    echo "Menu:"
    echo "1. Run Script 1"
    echo "2. Run Script 2"
    echo "3. Quit"
}

run_script1(){
    echo "Running Script 1..."
    ./one.sh
}

run_script2(){
    echo "Running Script 2..."
    ./two.sh
}

change_directory(){
    echo "Select a directory:"
    echo "1. Directory 1"
    echo "2. Directory 2"
    echo "3. Directory 3"
    echo "Enter your choice: "
    read dir_choice

    case $dir_choice in
        1) cd /absolutePath/to/directory1 || { echo "Error: Unable to change directory."; return; };;
        2) cd /absolutePath/to/directory2 || { echo "Error: Unable to change directory."; return; };;
        3) cd /absolutePath/to/directory3 || { echo "Error: Unable to change directory."; return; };;
        *) echo "Invalid choice. Please enter a number between 1 and 3.";;
    esac
    echo "Changed to directory: $(pwd)"
}



while true; do
    display_menu
    echo "Enter your choice: "
    read choice

    case $choice in
        1) run_script1;;
        2) run_script2;;
        3) change_directory;;
        4) echo "Exiting...";exit;;
        *) echo "Invalid choice. Please enter a number between 1 and 3.";;
    esac
done
