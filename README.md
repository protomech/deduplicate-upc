# deduplicate-upcs

## Usage

1. Separate each offer into a file containing all UPCs

    Example: offer 12345 contains 3 upcs 123 456 789
    ```
    12345.txt:
    123
    456
    789
    ```
1. Place all text files in this directory
1. Run the de-duplicate script
    ```
    ./de-duplicate.sh
    ```
1. Massage the output as needed