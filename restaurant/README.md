## Restaurant

### Skills

- Classes: `class`
- Instance variables: `@name`, `initialize`
- Constants: `MENU_ITEMS`
- Looping: `loop do`, `.each_with_index`
- Loop control: `next`, `break`
- Validation: `.to_i == 0`
- String interpolation: `"$#{price}"`
- Gems: `terminal-table`
- Delaying: `sleep`

### Demo

1. Define class for MenuItem
2. Define class for Order
3. Build menu items
4. Create new order
5. Display menu
6. Ask for user choice from menu, repeatedly
7. Validate the user’s choice, skipping if invalid
8. Add valid item to order
9. Delay output with `sleep`
10. Display order bill with total

### Challenge

Using the exist demo, add:

1. A main menu with:
    1. Show food menu
    2. Order items
    4. Ask for bill
2. Choose from entree, main & desert submenus
3. Add descriptions to items
4. Order with food options (e.g. no mushrooms please)
5. Allow payment of bill, either by cash or credit card
    - Credit cards incur a surcharge of 1.5%. Display this as a line item on the bill, and include it in the total

