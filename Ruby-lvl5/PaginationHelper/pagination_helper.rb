class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.count
  end

  # returns the number of pages
  def page_count
    (@collection.count / @items_per_page.to_f).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index < page_count - 1
      @items_per_page
    elsif page_index == page_count - 1
      item_count - (page_count - 1) * @items_per_page
    else
      -1
    end
  end
  # BEST SOLUTION
  # i = collection[index * per_page...index * per_page + per_page]
  # i ? i.size : -1

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    if item_index >= 0 && item_index < item_count
      item_index / @items_per_page
    else
      -1
    end
  end
end
  # BEST SOLUTION
  # return -1 unless (0...item_count).include? index
  # page = index / per_page

# Testing
helper = PaginationHelper.new(['a', 'b', 'c', 'd', 'e', 'f'], 4)
pp "page_count: #{helper.page_count}" # should == 2
pp "item_count: #{helper.item_count}" # should == 6
pp "page_item_count(0) : #{helper.page_item_count(0)}"  # should == 4
pp "page_item_count(1) : #{helper.page_item_count(1)}"  # last page - should == 2
pp "page_item_count(2) : #{helper.page_item_count(2)}"  # should == -1 since the page is invalid

# page_ndex takes an item index and returns the page that it belongs on
pp "page_index(5): #{helper.page_index(5)}" # should == 1 (zero based index)
pp "page_index(2): #{helper.page_index(2)}" # should == 0
pp "page_index(20): #{helper.page_index(20)}" # should == -1
pp "page_index(-10): #{helper.page_index(-10)}" # should == -1 because negative indexes are invalid

# TDD
# describe "Solution" do
#   example = PaginationHelper.new(['a', 'b', 'c', 'd', 'e', 'f'], 4)

#   it "test item_count method" do
#     Test.assert_equals(example.item_count, 6, "Test item count")
#   end

#   it "test page_count method" do
#     Test.assert_equals(example.page_count, 2, "Test page count")
#   end

#   it "test page_item_count method" do
#     Test.assert_equals(example.page_item_count(0), 4, "Test page_item count(0)")
#     Test.assert_equals(example.page_item_count(1), 2, "Test page_item count(1)")
#     Test.assert_equals(example.page_item_count(2), -1, "Test page_item count(2)")
#   end

#   it "test page_index count method" do
#     Test.assert_equals(example.page_index(5), 1, "Test page_index(5)")
#     Test.assert_equals(example.page_index(2), 0, "Test page_index(2)")
#     Test.assert_equals(example.page_index(20), -1, "Test page_index(20)")
#     Test.assert_equals(example.page_index(-10), -1, "Test page_index(-10)")
#   end
# end
