# Desenvolva Seu Portfólio Mobile Criando Apps iOS

Projeto desenvolvido durante o Bootcamp Santander 2023 - Mobile iOS com Swift, sob a orientação do especialista [Robson Moreira](https://github.com/robixnai "Robson Moreira").</br>
Neste projeto de Lab, conheceremos na prática o framework da Apple para criação de UI em conjunto com a sua nova estrutura de programação reativa, o Combine. Desenvolveremos três aplicativos intuitivos utilizando essas tecnologias como padrão de projetos MVVM.

Neste desafio, você terá a missão de desenvolver 3 aplicativos no XCode:

1. O primeiro consiste em utilizar o Swift como linguagem de programação, UIkit, Storyboard, XIB e ViewCode, tudo isso utilizando Cocoapods para gerenciar ao menos uma depêndencia e possuir no mínimo três telas;
2. No segundo projeto, deverá utilizar SwiftUI, Combine e uma depêndencia gerenciada pelo Swift Package Manager(SPM);
3. Por fim, no terceiro projeto vamos explorar o conceito de modularização, onde voce poderá optar por utilizar o UIkit ou SwiftUI e utilizar o Cocoapods para a criação do módulo, sendo necessário ter no mínimo um módulo bem simples e um App para usar esse módulo.

## Build Your Mobile Portfolio by Creating iOS Apps

Project developed during the Santander Bootcamp 2023 - Mobile iOS with Swift, under the guidance of specialist [Robson Moreira](https://github.com/robixnai "Robson Moreira").</br>
In this lab project, you will gain hands-on experience with Apple's UI framework alongside its new reactive programming framework, Combine. You will develop three intuitive applications using these technologies and the MVVM design pattern.</br>
For this challenge, your task is to develop three applications in Xcode:

1. The first project involves using Swift as the programming language, along with UIKit, Storyboard, XIBs, and ViewCode; you must use CocoaPods to manage at least one dependency, and the app must consist of at least three screens;
2. For the second project, you must use SwiftUI, Combine, and a dependency managed by the Swift Package Manager (SPM);
3. Finally, the third project explores the concept of modularization; you may choose between UIKit or SwiftUI and use CocoaPods to create the module, requiring at least one simple module and an app that utilizes it.

## Projects Overview

### 1. Project 1: Native UIKit & ViewCode Application (`calculator-ios`)

A native iOS application built entirely programmatically without Storyboards or XIBs, utilizing the **Coordinator Pattern** to decouple navigation logic from the view hierarchy.

- **Technology Stack:** Swift, UIKit, ViewCode.
- **Dependency Management:** Managed via **CocoaPods** using **SnapKit** to build robust, fluid Auto Layout constraints.
- **Navigation Architecture:** Orchestrated by `MainCoordinator`, directing user flows sequentially through three independent native screens:
    1. `MainViewController` (Dashboard Hub)
    2. `DetailsViewController` (Project Specifications)
    3. `SettingsViewController` (Preferences Center)

![calculator-ios](docs/assets/Screenshot_project1_web_demo.png)

### 2. Project 2: Reactive SwiftUI Portfólio (`PortfolioApp`)

A modern, declarative portfolio application showcasing personal professional background, built with an emphasis on fluid interface rendering and unidirectional data flows.

- **Technology Stack:** SwiftUI, Combine Framework.
- **Reactive Programming:** Implemented an `ObservableObject` service tier (`AppModel`) that broadcasts portfolio state transformations dynamically using `@Published` wrappers paired with `@StateObject` property wrappers at the view lifecycle layer.
- **Dependency Management:** Custom typographic hierarchies and styling rules are processed seamlessly using the **Swift Package Manager (SPM)**.

![PortfolioApp](docs/assets/Screenshot_project2_web_demo.png)

### 3. Project 3: Architecture Modularization (`PortfolioKit`)

An architectural optimization exercise aimed at decoupling structural boundaries by extracting components into an isolated local library framework.

- **Modular Approach:** Created a standalone local pod called **`PortfolioKit`**.
- **Encapsulation:** Isolated the reusable elements `SharedSkill` (Model) and `SharedSkillView` (UI Component) using the `public` access modifier control layer.
- **Integration:** The decoupled assets are injected back into the main `PortfolioApp` target using cross-module consumption via `import PortfolioKit`, satisfying micro-frontend architectural practices.

## Setup & Installation Instructions

Follow these steps to compile and execute the workspace locally on your machine:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/njtsb1/Mobile_Portfolio_Creating_iOS_Apps
    cd Mobile_Portfolio_Creating_iOS_Apps/Project

    ```

2. **Install dependencies via CocoaPods:**
    Ensure you have CocoaPods installed on your system. Run the following command from the root `\Project` directory to link the external dependencies (`SnapKit`) and structural local pods (`PortfolioKit`):

    ```bash
    pod install
    ```

3. **Open the Workspace:**
    Always bypass individual `.xcodeproj` targets. Open the generated unified workspace instead:

    ```bash
    open project.xcworkspace
    ```

4. **Running the Apps:**
    - To test **Project 1 (UIKit)**: Select the **`Runner`** scheme from the Xcode top bar, choose an iOS simulator, and press `Cmd + R`.
    - To test **Projects 2 & 3 (SwiftUI & Modularization)**: Select the **`PortfolioApp`** scheme, choose an iOS simulator, and press `Cmd + R`.

## Developer Profile

- **Name:** Nivaldo Beirão
- **Role:** Administrative and IT Process Analyst
- **Specialization:** IT Governance & Management, Operational Efficiency, GRC (Governance, Risk, and Compliance)
- **Location:** Registro, São Paulo, Brazil

| ![Dark Mode](docs/assets/Screenshot_dark_web_demo.png) | ![Light Mode](docs/assets/Screenshot_light_web_demo.png) |

[LICENSE](/LICENSE)
