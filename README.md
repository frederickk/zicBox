# ZicBox: A Modular Framework for Building Music Applications

### **ZicBox** is a versatile C++ framework designed to simplify the development of music applications, with a primary focus on creating grooveboxes and drum machines for custom hardware running on **Raspberry Pi**.

However, it is not limited to embedded devices, it also runs on **Linux desktops**, making it a basic foundation for building full-fledged music production software.

<!-- https://discord.gg/65HTx7z9qg -->

If you have any questions, feel free to ask on **Discord**:

[![](https://dcbadge.limes.pink/api/server/65HTx7z9qg)](https://discord.gg/65HTx7z9qg)

Follow the project on **Instagram**:

[![Instagram](https://img.shields.io/badge/Follow-%40zicbox.audio-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/zicbox.audio/)


---
## 🎵 Features 🎶

### Modular Architecture
**ZicBox** is built around a highly modular system that ensures flexibility and extensibility:

- **UI Components as Modules** – Every UI element is encapsulated as a module, allowing for easy customization and expansion.
- **Audio Processing as Modules** – Synth engines (such as drum synthesizers, sample players, ...) and effect processors (like filters, distortion, etc.) are also modular, enabling seamless integration of new sound-processing capabilities.
- **Hardware Interfaces as Modules** – The system abstracts hardware interactions into modules, making it simple to add support for new devices without modifying the core application.

This modular design allows developers to extend **ZicBox** effortlessly by adding new modules without altering the framework’s core logic.

### Performance & Multi-Threading

ZicBox efficiently manages system resources:

- Running the **UI in a dedicated thread** to ensure smooth rendering and interaction.
- **Routing all control data** between the UI and the audio engine efficiently.
- Running each **audio track in a separate thread**, ensuring optimal processing.
- Handling **audio thread synchronization** to maintain precise timing and tempo accuracy.

### Scripting & UI Configuration with TypeScript & JSX
For configuring the framework, **ZicBox** use **JSON**. However, instead of writing pure JSON, developers can use **TypeScript** to generate the configuration file. This allows for a **strongly typed** configuration system while still benefiting from JSON lightweight runtime.

Additionally, **ZicBox** leverages **JSX (React-style syntax)** for UI configuration, making it intuitive to define interface components. Unlike traditional React, there is no component state management involved, JSX is used purely for declarative UI structure.

---
## 🎛 Why Choose ZicBox?

- **🖥️ Designed for Custom Hardware** – Optimized for Raspberry Pi but also runs on Linux desktop.
- **🧩 Extensible & Modular** – Easily add new UI components, synth engines, effects, and hardware integrations.
- **⚡ High-Performance Audio** – Multi-threaded design ensures real-time audio processing with precise synchronization.
- **💡 Type-Safe Configuration** – Use TypeScript instead of Lua for a structured, maintainable setup.
- **🎨 JSX-Based UI** – Define interfaces declaratively with React-style syntax.

**ZicBox** is an ideal solution for developers looking to build **custom music applications**, whether for standalone hardware or full desktop music production environments.

---

## 📥 Get Started

The fastest way to dive into **ZicBox** is to start with one of the existing builds.

### [ZicPixel](./wiki/15-Zic-Pixel)

<table>
  <tr>
    <td>
      <img width="480" alt="ZicPixel" src="./hardware/ZicPixel/build/pixel_12btn.png?raw=true" />
    </td>
    <td>
      <img width="545" alt="ZicPixel" src="https://llllllll.co/uploads/default/original/3X/e/8/e8b3dba18e61384f4f33f62e848d35b5399a47c4.jpeg" />
    </td>
  </tr>
</table>

### [ZicGrid](./wiki/10-Zic-Grid)

<table>
  <tr>
    <td>
      <img src="./hardware/ZicGrid/build/zicpad.png?raw=true" alt="ZicGrid" width="480">
    </td>
    <td>
    <img src="./hardware/ZicGrid/build/zicgrid-build2.jpg?raw=true" alt="ZicGrid" width="480">
    </td>
  </tr>
</table>

### [Zic XY](./wiki/20-Zic-XY)

<table>
  <tr>
    <td>
      <img src="./hardware/ZicXY/build/Zic_XY_black.png?raw=true" alt="ZicXY" width="480">
    </td>
    <td>
      <img src="./hardware/ZicXY/build/Zic_XY_blue.png?raw=true" alt="ZicXY" width="480">
    </td>
  </tr>
</table>

---

## 🛠️ Build Your Own

Feeling adventurous? **ZicBox** is modular by design, so you can create your own hardware and custom UI layouts:
- Clone the repo and explore the different modules (UI, audio, hardware).
- Define your own layout and track arrangement in JSON/TypeScript.
- Build a completely custom groovebox or drum machine suited to your needs.

This option gives you maximum flexibility, but keep in mind that interest has been lower in this area, so documentation and ready-made examples is limited.


```sh
git clone --recurse-submodules https://github.com/apiel/zicBox.git
cd zicBox
```

> **Note:** If the repository has already been cloned but submodules are missing, run the following command to pull them:
>
> ```sh
> git submodule update --init
> ```

👉 Whichever path you choose, **ZicBox** gives you a strong foundation to build music applications – from easy-to-assemble hardware to fully custom instruments.

More [documentation here](./wiki).

---

## 🕹️ Videos and Demos

- https://www.youtube.com/watch?v=WyLNWE1CIYA&list=PLikTjJf4SwPpBYi4iVVPOwZ3j4N9gT0Sy
- https://www.youtube.com/playlist?list=PLikTjJf4SwPpBYi4iVVPOwZ3j4N9gT0Sy
- https://github.com/apiel/zicBox/assets/5873198/ce7851f0-9692-4132-8f6f-98f3bc18849a
- https://github.com/apiel/zicBox/assets/5873198/230f3da5-50a4-4377-aa6f-c81a4099012f
- https://github.com/apiel/zicBox/assets/5873198/e99b061a-aea1-4e77-b8cd-2412d9264760

