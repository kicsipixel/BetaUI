# BetaUI Swift Package
## Creating fast prototypes in SwiftUI, focusing on app logic instead of UI

![](README.png)

### Components

#### - Border
- DefaultTextFieldBorder ```BUIInputTextFiledBorder()```
#### - Button
- ```BUIDefaultButtonStyle```
- ```BUIInverseButtonStyle```
#### - Input
- TextField
 
 ```
 BUIInputTextField(
		 text: Binding<String>
		 placeholder: String
		 keyboardType: (UIKeyboardType)
		 sfSymbol: String?
 )
 ```
 
- SecureTextFiled

 ```
 BUISecureTextField(
		 text: Binding<String>
		 placeholder: String
		 keyboardType: (UIKeyboardType)
		 sfSymbol: String?
 )
 ```
#### - Textstyle (as ViewModifier)
- Header ```.modifier(BUIHeaderText())```
- Footnote ```.modifier(BUIFootnoteText())```

### Extension
#### - Color
#### - View