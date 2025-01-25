# Simple Cart

A simple shopping cart interface built with `SwiftUI`. This project demonstrates the basics of building a cart UI, including displaying items, quantities, prices, and calculating the total price dynamically.

## Features

- **Cart Header**: Displays a cart icon and title at the top of the screen.
- **Item List**: Shows a list of items in the cart, including:
  - Item name
  - Price per unit
  - Quantity
- **Total Price**: Dynamically calculates and displays the total price of all items in the cart.
- **Responsive Layout**: Ensures the cart icon and text align properly for a clean and intuitive design.

## Preview

![Simple Cart Preview](/img/image.png)

## Technologies Used

- **SwiftUI**: For building the user interface.
- **Xcode**: For development and testing.

## How It Works

1. **Model**: The `CartItem` struct represents individual items in the cart with the following properties:
   - `name`: Name of the item.
   - `price`: Price per unit.
   - `quantity`: Number of units.
2. **Dynamic Total**: The total price is calculated using the `reduce` function, multiplying each item's price by its quantity and summing them up.
3. **UI Layout**:
   - Items are displayed using a `ForEach` loop for efficient rendering.
   - The header and total price sections are styled with `HStack` and `VStack` for alignment and spacing.

## Code Snippet

Here is a snippet of how items are displayed in the cart:

```swift
ForEach(items) { item in
    VStack(alignment: .leading, spacing: 4) {
        HStack {
            Text(item.name)
            Spacer()
            Text("Rp.\(item.price)")
        }
        Text("X\(item.quantity)")
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
    .padding(.vertical, 4)
}
```

## How to Run

1. clone this repository:

```bash
git clone https://github.com/your-username/simple-cart.git
```

2. Open the project in `Xcode`.
3. Build and run the project on a simulator or a physical device.

## Future Improvements

    •	Add functionality to edit item quantities.
    •	Integrate with a backend API for dynamic data fetching.
    •	Enhance UI with animations and custom styling.

## License

This project is licensed under the MIT License. See the [LICENSE](https://gist.github.com/ckib16/8732561535ed766cd6b8) file for details.
