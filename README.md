# ComplexTreeVisualizer - C++ Tree and Complex Number Visualization

### Ariel Shamay 
**Email:** [arielsh49@gmail.com](mailto:arielsh49@gmail.com)  
**LinkedIn:** [https://www.linkedin.com/in/ariel-shamay-78011a2b0](https://www.linkedin.com/in/ariel-shamay-78011a2b0)

---

## Project Overview

**ComplexTreeVisualizer** is a C++ application designed for visualizing advanced data structures and mathematical concepts. The project includes a generic tree data structure implemented with templates, supports operations on complex numbers, and provides a graphical representation of these structures using the SFML library.

---

## Main Features

- **Generic Tree Data Structure**: Versatile and reusable tree implementation using templates.
- **Complex Number Operations**: Manage and compare complex numbers efficiently.
- **Interactive Visualization**: Graphical visualization of trees and complex number nodes using SFML.
- **Automated Testing**: Includes robust unit tests using the Doctest framework.

---

## Project Structure

- `Tree.hpp`: Template-based generic tree structure.
- `Complex.hpp / Complex.cpp`: Class for representing and manipulating complex numbers.
- `Node.hpp`: Node definitions used in the tree.
- `Demo.cpp`: Demonstration program showcasing tree visualization.
- `Test.cpp`: Automated tests ensuring code correctness.

---

## Setup and Execution

### Requirements
- C++ compiler (g++ recommended)
- SFML library installed

### Installation

Clone the repository:

```bash
git clone <repository_url>
cd ComplexTreeVisualizer
```

### Compilation

Compile the project using the provided makefile:

```bash
make
```

### Running the Application

Execute the visualization demo:

```bash
./Demo
```

### Running Tests

Run the automated unit tests:

```bash
make test
./Test
```

---

## Technologies & Tools

- **C++**
- **SFML** (Simple and Fast Multimedia Library)
- **Doctest** (Testing Framework)

---

## Notes

Make sure the SFML graphics library and the required dependencies are properly configured on your system for successful execution.

