 # Docker

a docker is a platform for building  ,running and shipping applications
so if your application works and your machine it can run and funcrion the same way on other machines

Imagine you're a developer and you want to run an application on a friend's computer. The problem is, their computer might have different things installed than yours, so your application might not work.

Docker is like a tool that lets you package your application with all its necessary parts -  the code, libraries, and any other tools it needs - into a neat little container. This container is self-contained, so it doesn't matter what's on the other computer, as long as they have Docker. They can just run the container, and your application will work just like it did on yours.

Here's the benefit:

Portability: Your application runs anywhere Docker is installed, like moving a box between rooms.
Consistency: The application always has what it needs, no matter the environment.
Isolation: Applications in separate containers don't interfere with each other, like having separate rooms for different tasks.
Docker itself is the software that helps you build and manage these containers.

# difference between a container and a virtual machine

a Container is an isolated environment for running a application.
a VM is an abstraction of a machine .

Container allows running multiple apps in isolation
and more light weight than vms they dont need a full operating system + starts quickly
and need less hardware resources

# Docker architecture
Docker uses a client-server architecture with several key components working together:

Docker Client: This is the user interface you interact with to build, run, and manage your containers. It can be a command-line tool or a graphical user interface (GUI).

Docker Daemon (dockerd): This is the backend service that runs on the host machine. It handles the heavy lifting of building, running, and managing containers based on instructions from the client.

Docker Host: This is the machine where Docker is installed and runs the Docker daemon. It also stores the actual containers, images, and networks.

Docker Objects: These are the building blocks you use to create and run applications:

Images: These are read-only templates that define what a container will look like when it runs. They contain the application code, libraries, and configurations.
Containers: These are running instances of Docker images. You can have multiple containers based on the same image, each with its own data and state.
Networks: These allow containers to communicate with each other and with the outside world.
Volumes: These are directories that persist data outside of containers. This is useful for data that needs to be preserved even if the container is stopped or restarted.
