require 'kata'

kata "Binary Search" do
  detail "Do not use built in array search functions"

  requirement "Create a binary search class that is initialized with an array of integers" do
    detail "The initial array is [1,3]"
    detail "return the index of the search value if found"
    example "searching for 3 returns 1"
  end

  requirement "Successfully deal with values that are not in the data set" do
    example "searching for 5 indicates to the caller the value is not found"
  end

  requirement "Binary Search handles an odd number of elements in the data set" do
    detail "Allows the data set to be redefined with [1,3,5,7,9]"
    example "Searching for 5 returns 2"
    example "Searching for 7 returns 3"
  end

  requirement "Handles more than trivial sized data set" do
    detail "consider a data set of the first 10000 integers"
    example "Searching for 899 returns 888"
  end

  requirement "Supports duplicate elements in the data set" do
    detail "Use [1,3,5,5,7,9] as the data set"
    example "Searching for 3 returns 1"
    example "Searching for 5 returns 2"
  end

  requirement "Provides access to multiple positions for duplicate data" do
    detail "First call returns first position"
    detail "Subsequent call returns next position"
    detail "Handles expired calls for next position like missing elements"
    detail "Use [1,3,5,5,7,9] as the data set"
    example "First search for 5 returns 2"
    example "Second call to search for 5 returns 3"
  end

  requirement "Handles expired call for duplicate elements" do
    detail "Use [1,3,5,5,7,9] as the data set"
    example "Third call to search for 5 is handled like missing element"
  end
end

questions do
  question "Can you think of a different technique for building the kata"
  question "What can you say about the relative merits of the various techniques you chose"
  question "Which is the most likely to make it into production code"
  question "Which was the most fun to write"
  question "Which requirement was the hardest to get working"
  question "For all of the above, ask yourself why"
end