---
outline: deep
---

# Rack organization

# Rack Layout

## Overview
The rack layout is organized to ensure efficient space utilization, proper airflow, and ease of access for maintenance. Devices are mounted in the rack based on their size, function, and power requirements, with a focus on optimizing network connectivity and cable management.

## 1. Device Mounting

- **Top Section**:
  - **Network Equipment**:
    - The top section of the rack is reserved for network devices, such as routers, switches, and patch panels.
    - Devices: Ubiquiti EdgeRouter, UniFi Switch 16-Port, Patch Panel.
    - Mounted at 1U to 2U height for easy access to ports and cable management.

- **Middle Section**:
  - **Primary Servers**:
    - Core servers (e.g., virtualization, storage) are housed in the middle section for optimal cooling and easy accessibility.
    - Devices: Dell PowerEdge T340, Intel NUC, TrueNAS Server.
    - Mounted in 2U to 4U sections based on their size and form factor.

- **Bottom Section**:
  - **Power Distribution and UPS**:
    - Uninterruptible Power Supplies (UPS) and Power Distribution Units (PDU) are placed at the bottom of the rack to support stable power delivery and avoid interference with network or compute devices.
    - Devices: APC UPS, Surge Protectors, PDU.
    - Mounted on a sliding shelf for easy access to batteries and power management.

## 2. Power Management

- **Redundant Power Supply**:
  - Devices with dual power supplies (e.g., servers) are connected to both the main power source and a secondary UPS to ensure uptime during power outages.

- **Power Distribution Unit (PDU)**:
  - A PDU is used to distribute power from the UPS to all devices. The PDU is mounted on the side of the rack, and cables are routed to individual devices.

- **Cable Management**:
  - Power cables are routed through the side of the rack using cable management arms to prevent clutter and ensure easy access.

## 3. Network Connectivity

- **Patch Panels**:
  - A patch panel is mounted at the top of the rack, connecting the switch to network cables that lead to different devices within the rack.

- **Switches**:
  - All servers and storage devices are connected to a UniFi 16-Port switch via Cat6 Ethernet cables.

- **Cable Management**:
  - Ethernet cables are organized using Velcro ties and routed through cable management trays on the sides of the rack. This keeps the cables neat and prevents tangling.

## 4. Cooling and Airflow

- **Airflow**:
  - The rack is designed to promote front-to-back airflow, with servers mounted to allow cold air intake from the front and exhaust hot air through the rear.

- **Ventilation Panels**:
  - Unused rack space is covered with vented blanking panels to maintain proper airflow throughout the rack and prevent hot spots.

## 5. Maintenance Considerations

- **Sliding Rails**:
  - Devices like servers and storage units are mounted on sliding rails for easy access during maintenance. This allows for convenient removal without having to unmount other equipment.

- **Cable Labels**:
  - All power and network cables are labeled with identifiers for quick troubleshooting and reconfiguration.
