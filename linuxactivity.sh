while getopts f:n: o; do
  case $o in
    f) file=$OPTARG;;
    n) number=$OPTARG;;
    *) echo "Invalid option:"; exit 1;
  esac
done
shift "$((OPTIND - 1))"

head $file -n$number | tail -n1
exit 0
