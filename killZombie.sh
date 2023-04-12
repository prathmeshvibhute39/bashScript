function killzombies() {
    # Find all zombie processes
    zombies=$(ps aux | grep 'Z' | awk '{print $2}')

    # If there are no zombies, exit
    if [ -z "$zombies" ]; then
        echo "No zombie processes found"
        return
    fi

    # Kill all zombie processes
    for i in $zombies; do
        echo "Killing zombie process $i"
        kill -9 $i
    done

    echo "All zombie processes have been killed"
}
killzombies