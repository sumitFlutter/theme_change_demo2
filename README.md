# theme_change_example_using_provider
👉 Here theme_change package link :- <a href="https://github.com/sumitFlutter/theme_change">GitHub </a><br>
👉 Here theme_change package link :- <a href="https://pub.dev/packages/theme_change">Official pub.dev </a><br>
<h3>this package allows You to use custom Light and Dark Theme using built-in ThemeData class Otherwise You can use package provided Light and dark theme.</h3>
<hr>
<h2> New method </h2>
<h3> Use This ThemeMaterialAppProvider Widget like this: (You can add Extra properties that are mentioned in official docs)</h3>
<img src="https://github.com/user-attachments/assets/38936725-cce8-4314-bbe2-4464373e1f08" />
<hr>
<h2> Old Method </h2>
<h3>call this getTheme method and (assign themeMode Like this and define theme and dark theme Like this in MaterialApp) <br> Define ThemeProvider(Created by theme_change) in MultiProvider Like this (it's necessary)</h3>
<img src="https://github.com/user-attachments/assets/b4b47aab-e91d-434a-b5dd-4d30e256324e" />
<hr>
<h2> use below method in old and new both method for set theme </h2> 
<h3> Then after call this setTheme method Like this (it's necessary) </h3>
<img src="https://github.com/user-attachments/assets/0bf7afe2-5153-4e36-8ef1-1816b8cbf77d" />

<hr>
<h2>Warning:-</h2>
<h3>You can only use Consumer Widget for Live Data Update(State Managment).</h3>
<h3>You can't use context.read<> /context.watch<> or provider.of(context) Object for Live Data Update(State Managment).</h3>
<hr>
<h2>Additional Information</h2>
<h3>ThemeProvider.pTheme is this package's main boolean variable that contains current theme's State</h3>
  <h3>But As You know due to provider's and my package's guidelines you have to create ThemeProvider's object not a simple object Consumer(ThemeProvider) => (a casting provider to Consumer) and consumer's builder give a object of ThemeProvider then after you can access this pTheme with help of consumer's object(value)
    like this -> value.pTheme </h3>
<h3>By Default ..pTheme is set to like that
 (..pTheme == true so current themeMode value is Dark theme)
 (..pTheme== false so current themeMode value is Light theme )</h3>
<h3>By using above mentioned variable you can customise your app like using Switch Widget instead of Icon Widget</h3>
<h3>By using above mentioned variable you can customise your application with condition management
likw custom Image management (..pTheme?Image.asset(darktheme_image): Image.asset(lighttheme_image))</h3><hr>
<img src="https://github.com/user-attachments/assets/3b8cd50e-a09d-462a-aca2-7bbbee940a2f"  height="400px"  width="200px"/>
<img src="https://github.com/user-attachments/assets/8e18dc4a-eb70-4407-800e-0bb46fc8b7c4"  height="400px"  width="200px"/>
