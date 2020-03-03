function guessingame {
    local numberOfFiles=$(ls | wc -l)
    while true
    do
        echo "How many files do you think there are in the current directory?"
        read response

        if [[ $response = $numberOfFiles ]]
        then
            echo "Correct! Program ending now."
            return 0
        else
            if [[ $response -gt $numberOfFiles ]]
            then
                echo "Wrong, your guess is too high"
            else
                echo "Wrong, your guess is too low"
            fi
        fi
        echo ""
    done

}