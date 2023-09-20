#!/bin/bash

# Function to run command in a new terminal tab
run_in_new_terminal() {
  gnome-terminal --tab -- bash -c "cd '$1'; $2; exec bash"
}

# List of folder paths
folders=(
  "/media/qiang/B8707D67707D2D6E/CodesGoodNewark/WMCOG/2026_2045_adp"
  "/media/qiang/B8707D67707D2D6E/CodesGoodNewark/WMCOG/2026_2045_rep"
  "/media/qiang/B8707D67707D2D6E/CodesGoodNewark/WMCOG/2026_2045_ncc"
  # Add more folders here if needed
)

# List of corresponding commands for each folder
commands=(
  "./tap 0.0001 1 net_2030.txt sim_ctrl_2030.txt net_2040.txt sim_ctrl_2040.txt event_series_ok.txt rut_depth_ok.txt trip_mat_2030.csv trip_mat_2040.csv"
  "./tap 0.0001 1 net_2030.txt sim_ctrl_2030.txt net_2040.txt sim_ctrl_2040.txt event_series_ok.txt rut_depth_ok.txt trip_mat_2030.csv trip_mat_2040.csv"
  "./tap 0.0001 1 net_2030.txt sim_ctrl_2030.txt net_2040.txt sim_ctrl_2040.txt event_series_ok.txt rut_depth_ok.txt trip_mat_2030.csv trip_mat_2040.csv"
  # Add more commands here if needed
)

# Run each command in a new terminal tab
for ((i = 0; i < ${#folders[@]}; i++)); do
  folder="${folders[$i]}"
  command="${commands[$i]}"
  run_in_new_terminal "$folder" "$command"
done
