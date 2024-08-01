#!/bin/bash

# Output file for the network configuration review
OUTPUT_FILE="network_config_review.txt"

# Print header for the output file
echo "Network Configuration Review Report" > "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "-------------------------------------" >> "$OUTPUT_FILE"

# Function to check network interfaces
check_interfaces() {
    echo "Checking network interfaces..." >> "$OUTPUT_FILE"
    ip link show >> "$OUTPUT_FILE"
    echo "-------------------------------------" >> "$OUTPUT_FILE"
}

# Function to check IP addresses and subnet masks
check_ip_addresses() {
    echo "Checking IP addresses and subnet masks..." >> "$OUTPUT_FILE"
    ip -4 addr show >> "$OUTPUT_FILE"
    echo "-------------------------------------" >> "$OUTPUT_FILE"
}

# Function to check routing tables
check_routing_tables() {
    echo "Checking routing tables..." >> "$OUTPUT_FILE"
    ip route show >> "$OUTPUT_FILE"
    echo "-------------------------------------" >> "$OUTPUT_FILE"
}

# Function to configure static routes (example)
configure_static_routes() {
    echo "Configuring static routes..." >> "$OUTPUT_FILE"
    # Replace the following line with your specific route configuration
    ip route add 10.0.0.0/24 via 192.168.1.254 dev eth0
    echo "Static route added." >> "$OUTPUT_FILE"
    echo "-------------------------------------" >> "$OUTPUT_FILE"
}

# Run all checks and configurations
check_interfaces
check_ip_addresses
check_routing_tables
configure_static_routes

# Print completion message
echo "Network configuration review and basic routing completed. Report saved to $OUTPUT_FILE"
