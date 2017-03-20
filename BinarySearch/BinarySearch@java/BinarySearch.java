public class Search {

    public static <T extends Comparable<T>> int binarySearch(T[] array, T value, int lo, int hi) {
	if (lo < hi) {
	    int mid = (lo / 2) + (hi / 2);
	    int cmp = array[mid].compareTo(value);
	    if (cmp < 0) return binarySearch(array, value, lo, mid - 1);
	    if (cmp > 0) return binarySearch(array, value, mid + 1, hi);
	    return mid;
	} // if
	return -1;
    } // binarySearch
	
}