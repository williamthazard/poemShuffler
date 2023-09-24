echo "clearing shuffled.txt"
cat /dev/null > shuffled.txt
echo "shuffling"
for file in originals/*.txt ; do
    cat $file >> shuffled.txt
done
sort shuffled.txt --sort random --output shuffled.txt
echo "shuffled"
echo "result:"
cat shuffled.txt