include "map_builder.lua"
include "trajectory_builder.lua"


options = {
 map_builder = MAP_BUILDER,
 trajectory_builder = TRAJECTORY_BUILDER,
 map_frame = "map",
 tracking_frame = "base_link",
 published_frame = "base_link",
 odom_frame = "odom",
 provide_odom_frame = true,
 publish_frame_projected_to_2d = true,
 use_pose_extrapolator = true,
 use_odometry = true,
 use_nav_sat = true,
 use_landmarks = false,


-- lidar
 num_laser_scans = 1,
 num_multi_echo_laser_scans = 0,
-- change point clouds to 0 for 2 map .
 num_point_clouds = 1,
 num_subdivisions_per_laser_scan = 1,


 lookup_transform_timeout_sec = 0.2,
 submap_publish_period_sec = 0.3,
 pose_publish_period_sec = 5e-3,
 trajectory_publish_period_sec = 30e-3,
 rangefinder_sampling_ratio = 1.,
 odometry_sampling_ratio = 0.5,
 fixed_frame_pose_sampling_ratio = 1.,
 imu_sampling_ratio = 1.,
 landmarks_sampling_ratio = 1.,
}

-- find actual values
MAP_BUILDER.use_trajectory_builder_2d = true
TRAJECTORY_BUILDER_2D.use_imu_data = true
TRAJECTORY_BUILDER_2D.num_accumulated_range_data = 1
TRAJECTORY_BUILDER_2D.min_range = 0.5
TRAJECTORY_BUILDER_2D.max_range = 10.0
TRAJECTORY_BUILDER_2D.missing_data_ray_length = 5.0
TRAJECTORY_BUILDER_2D.voxel_filter_size = 0.05
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 10
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 2.3
TRAJECTORY_BUILDER_2D.motion_filter.max_time_seconds = 0.1
TRAJECTORY_BUILDER_2D.motion_filter.max_distance_meters = 0.01
TRAJECTORY_BUILDER_2D.motion_filter.max_angle_radians = 0.001
TRAJECTORY_BUILDER_2D.num_accumulated_range_data = 3  
TRAJECTORY_BUILDER_2D.submaps.num_range_data = 90
TRAJECTORY_BUILDER_2D.submaps.grid_options_2d.resolution = 0.05
TRAJECTORY_BUILDER_2D.submaps.grid_options_2d.grid_type = "PROBABILITY_GRID"






return options
