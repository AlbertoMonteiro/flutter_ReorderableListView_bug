# ReorderableListView bug

When ReorderableListView just contains a single item and you try to reorder it, it trigger `onReorder` with oldIndex = 0 and newIndex = 1.
The list just contains one single element, so the index value 1 is invalid.
