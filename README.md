<h3 align="center">
  Proof of Concept: Testing Interoperability Between <a href="https://github.com/ziglang/zig">Zig</a> and <a href="https://en.wikipedia.org/wiki/Visual_Basic_(classic)">VB6</a><br/><br/>
  <img src="https://raw.githubusercontent.com/ezekielbaniaga/zig-vb6_x86/master/screenshot.png" width="960"/>
</h3>

<p align="center">
  Discover the compatibility of Zig and VB6 in this interoperability test. This project serves as a proof of concept, demonstrating how these technologies can work together effectively.
</p>
<br/><br/>

<h3 align="left">Code Features</h3>
<p align="left">
This code demonstrates several important concepts, including the implementation of callback functions, the seamless exchange of String or u8 slices between Zig and VB6, the passing of integers (i32) in both directions, and the utilization of the CopyMemory API from the kernel32 library.
</p>

<h3 align="left">Note</h3> 
<p align="left">
To run this code successfully, it's essential to create an executable from it. Simply running it inside VB6 IDE won't suffice. An error "Bad DLL calling convention" might occur when running inside VB6 IDE.
</p>
<p align="left">
If you come across a solution to the 'Bad DLL calling convention' error, please don't hesitate to reach out and share your findings. Your insights and expertise could greatly benefit our community, and we appreciate your willingness to contribute to the resolution of this issue.
</p>

<h3 align="left">DLL Output Using Zig</h3>
<p align= "left">
<b>Default Target:</b> This project is configured with Windows X86 and the MSVC ABI as the default target for the `zig build` command. If your project is intended for this target, you can simply use:
<br/>
```
zig build
```

Zig will automatically build your project for Windows X86 with the MSVC ABI when you run the command without specifying a target.

Check build.zig for more info.
</p>

<h3 align="left">VB6 Note:</h3>
<p align="left">
Installing Visual Basic 6 (VB6) on modern operating systems can be a bit challenging due to compatibility issues. However, there are several helpful tutorials available on the internet that guide you through the installation process and offer workarounds to make VB6 run smoothly on the latest platforms.
</p>

